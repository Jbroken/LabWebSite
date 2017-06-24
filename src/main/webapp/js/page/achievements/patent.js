/**
 * Created by BZhao on 2017/6/23.
 */

var patent_type =["发明专利","实用新型","软件著作权"];

function bindPatentType() {
    var patentType = $("#patentType");
    patentType.empty();
    var dataItems=[];
    $.each(patent_type,function(index,item){
        dataItems.push('<option value="'+index+'" class="text-left">'+item+'</option>')
    });
    patentType.append(dataItems.join(''));

    patentType.selectpicker('val',patent_type[0]);

    patentType.selectpicker('render');
    patentType.selectpicker('refresh');
}

/**
 * 向服务器请求数据
 */
function getAllData() {
    var typeList = $('#patentType').selectpicker('val');

    console.log(typeList);
    $.ajax({
        url:'../achievements/getPatentList',
        type:'post',
        dataType:'json',
        data:{types:typeList},
        success:function (rdata) {
            bindData(rdata);
        },
        error:function () {
            $.alert({
                title: '消息提示',
                content: "请求数据失败！",
            });
        }
    });
}

/**
 * 绑定数据到页面
 */
function bindData(dataList) {
    var table = $('table tbody'),patentList = [];
    table.empty();

    $.each(dataList,function (index,node) {
        patentList.push('<tr>');
        patentList.push('<td><input type="checkbox" name="patentID" value='+node.id+'></td>');
        patentList.push('<td>'+(index+1)+'</td>');
        patentList.push('<td>'+node.content+'</td>');
        patentList.push('<td>'+patent_type[node.type]+'</td>');
        patentList.push('<td>'+node.createdate+'</td>');
        patentList.push('<td>'+node.updatedate+'</td>');
        patentList.push('</tr>');
    })
    table.append(patentList.join(' '));
}

/**
 * 为页面四个功能按钮绑定点击事件
 */
$('#add').click(function () {
    editor.txt.clear();
    $('#Modal').modal('show');

    $('#addModal').empty();
    $('#addModal').append("新增专利");

    //移除save_patent上的click事件
    $('#save_patent').off();
    $('#save_patent').on("click",function () {
        addPatent();
    })
});

$('#del').click(function () {
    $('#Del_Modal').modal('show');
})

$('#search').click(function(){
    getAllData();
});

$('#edit').click(function(){
    editPatent();
});


/**
 * 上传新增专利
 */
function addPatent() {
    var param ={};
    var patent_type = $('#patent_type').selectpicker('val');
    if(patent_type == null){
        patent_type =0;
    }
    param.type = patent_type;
    param.content = editor.txt.html();
    $.ajax({
        url:'../achievements/addPatent',
        type:'post',
        dataType:'json',
        data:param,
        success:function (rdata) {
            $.alert({
                title: '消息提示',
                content: rdata.message,
            });
            $('#Modal').modal('hide');
            getAllData();
        },
        error:function () {
            $.alert({
                title: '消息提示',
                content: "上传数据失败！",
            });
        }
    })

}

/**
 * 删除专利
 */
$('#del_patent').click(function () {
    var id = $('input[name="patentID"]:checked').val();
    $('#Del_Modal').modal('hide');
    $.ajax({
        url:'../achievements/delPatent',
        type:'post',
        dataType:'json',
        data:{id:id},
        success:function (rdata) {
            $.alert({
                title: '消息提示',
                content: rdata.message,
            });
            getAllData();
        },
        error:function () {
            $.alert({
                title: '消息提示',
                content: "删除数据失败！",
            });
        }
    })
})

/**
 * 通过ID修改专利
 */
function editPatent() {
    var id = $('input[name="patentID"]:checked').val();
    if (id ==null){
        $.alert({
            title: '消息提示',
            content: "请选中需要修改的数据！",
        });
        return;
    }
    $.ajax({
        url:'../achievements/getPatentById',
        type:'post',
        dataType:'json',
        data:{id:id},
        success:function (rdata) {
            bindModal(rdata.data);
        },
        error:function () {
            $.alert({
                title: '消息提示',
                content: "获取数据失败！",
            });
        }
    })
}

/**
 * 绑定数据到modal中
 * @param patent
 */
function bindModal(patent) {
    $('#Modal').modal('show');

    $('#addModal').empty();
    $('#addModal').append("修改专利");

    $('#typeID').val(patent.id);
    $('#patent_type').selectpicker('val',patent_type[patent.type]);
    editor.txt.html(patent.content);

    //移除save_patent上的click事件
    $('#save_patent').off();
    $('#save_patent').on("click",function () {
        updatePatent();
    })

}

/**
 * 上传编辑后的数据
 */
function updatePatent() {
    var param ={};
    var patent_type = $('#patent_type').selectpicker('val');
    if(patent_type == null){
        patent_type =0;
    }
    param.type = patent_type;
    param.content = editor.txt.html();
    param.id = $('#typeID').val();
    $.ajax({
        url:'../achievements/modifyPatent',
        type:'post',
        dataType:'json',
        data:param,
        success:function (rdata) {
            $.alert({
                title: '消息提示',
                content: rdata.message,
            });
            $('#Modal').modal('hide');
            getAllData();
        },
        error:function () {
            $.alert({
                title: '消息提示',
                content: "上传数据失败！",
            });
        }
    })
}


/**
 * 初始化富文本编辑器
 */
var E = window.wangEditor;
var editor = new E('#patent_text')
editor.create();
/**********************end*******************/

/**
 * 页面渲染后加载此函数
 */
$('body').ready(
    bindPatentType(),
    getAllData()

)