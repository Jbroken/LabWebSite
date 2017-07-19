/**
 * Created by jing on 2017/6/28.
 */
var scientific_type=["类型1","类型2"];


/**
 * 初始化富文本编辑器
 */
var E = window.wangEditor;
var editor = new E('#scientific_text')
editor.create();

/**
 * 触发事件
 */
$('#add').click(function () {
    editor.txt.clear();
    $('#Modal').modal('show');
    $('#myModalLabel').empty();
    $('#myModalLabel').append("新增项目");
    $('#save_scientific').on("click",function () {
        addScientific();
    })
});

$('#delete').click(function () {
    var delId=$('input[name="scientificID"]:checked').val();
    if(delId==null){
        common.successPrompt("请选中需要被删除的数据！");
        return;//?
    }
    $('#del_Modal').modal('show');
});

$('#query').click(function () {
    getAllData();
})

$('#update').click(function () {
    getData();
})

/**
 * 获取数据
 */
function getData() {
    var id = $('input[name="scientificID"]:checked').val();
    if (id==null) {
        common.successPrompt("选择修改项目");
        return;
    }
    $.ajax({
        url: '../scientific/scientificById',
        type: 'post',
        dataType: 'json',
        data: {id: id},
        success: function (rdata) {
            common.closeWait();
            bindModal(rdata.data);
        },
        error: function () {
            common.closeWait();
            common.errorPrompt("获取数据失败！");
        }
    })
}

/**
 * 显示获取的数据
 * @param scientific
 */
function bindModal(scientific){
    $('#Modal').modal('show');
    $('#myModalLabel').empty();
    $('#myModalLabel').append("修改数据");
    
    $('#scientific_type').selectpicker('val', scientific_type[scientific.type]);
    $('#isCompleted').val(scientific.iscomplete);
    editor.txt.html(scientific.content);
    $('#save_scientific').on("click",function () {
        updateDate();
    })
}
/**
 * 更新数据
 */
function updateDate() {
    var param ={};
    param.type = $('#scientific_type').selectpicker('val');
    param.iscomplete=$('#isCompleted').val();
    param.content = editor.txt.html();
    common.showWait();
    $.ajax({
        url:'../scientific/updateDate',
        type:'post',
        dataType:'json',
        data:param,
        success: function (rdata) {
            common.closeWait();
            common.successPrompt(rdata.message);
            $('#Modal').modal('hide');
            getAllData();
        },
        error: function () {
            common.closeWait();
            common.errorPrompt("上传数据失败！")
        }
    })
}

/**
 * 上传新增项目
 */
function addScientific() {
    var param ={};
    param.type = $('#scientific_type').selectpicker('val');
    param.iscomplete=$('#isCompleted').val();
    param.content = editor.txt.html();
    common.showWait();
    $.ajax({
        url:'../scientific/addScientific',
        type:'post',
        dataType:'json',
        data:param,
        success: function (rdata) {
            common.closeWait();
            common.successPrompt(rdata.message);
            $('#Modal').modal('hide');
            getAllData();
        },
        error: function () {
            common.closeWait();
            common.errorPrompt("上传数据失败！")
        }
    })

}
/**
 * 删除项目
 */
$('#sure_delete').click(function () {
    var ID=$('input[name="scientificID"]:checked').val();
    common.showWait();
    $.ajax({
        url:'../scientific/deleteScientific',
        type:'post',
        dataType:'json',
        data:{id:ID},
        success:function (rdata) {
            common.closeWait();
            common.successPrompt(rdata.message);
            $('#del_Modal').modal('hide');
            getAllData();
        },
        error: function () {
            common.closeWait();
            common.errorPrompt("删除失败")
        }
        }
    )
})


/**
 * 向服务器请求数据
 */
function getAllData() {
    var typeList = $('#scientificType').selectpicker('val');
    common.showWait();
    $.ajax({
        url: '../scientific/getScientificList',
        type: 'post',
        dataType: 'json',
        data: {type: typeList},
        success: function (rdata) {
            common.closeWait();
            bindData(rdata);
        },
        error: function () {
            common.closeWait();
            common.errorPrompt("数据加载出错！")
        }
    });
}



/**
 * 绑定数据到页面
 */
function bindData(dataList) {
    var table = $('table tbody'), scientificList = [];
    table.empty();

    $.each(dataList, function (index, node) {
        scientificList.push('<tr>');
        scientificList.push('<td><input type="checkbox" name="scientificID" value=' + node.id + '></td>');
        scientificList.push('<td>' + (index + 1) + '</td>');
        scientificList.push('<td>' + node.content + '</td>');
        scientificList.push('<td>' + scientific_type[node.type] + '</td>');
        scientificList.push('<td>' + node.createdate + '</td>');
        scientificList.push('<td>' + node.updatedate + '</td>');
        scientificList.push('<td>' + node.iscomplete + '</td>');
        scientificList.push('</tr>');
    })
    table.append(scientificList.join(' '));
}

$(document).ready(function () {
      getAllData();
    }
)
