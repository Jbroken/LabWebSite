/**
 * Created by BZhao on 2017/6/23.
 */

var patent_type = ["发明专利", "实用新型", "软件著作权"];

/**
 *绑定页面专利类型
 */
function bindPatentType() {
    var patentType = $("#patentType");
    patentType.empty();
    var dataItems = [];
    $.each(patent_type, function (index, item) {
        dataItems.push('<option value="' + index + '" class="text-left">' + item + '</option>')
    });
    patentType.append(dataItems.join(''));

    patentType.selectpicker('render');
    patentType.selectpicker('refresh');

    patentType.selectpicker('val', patent_type[0]);
}

/**
 * 向服务器请求数据
 */
function getAllData() {
    var typeList = $('#patentType').selectpicker('val');
    common.showWait();
    $.ajax({
        url: '../achievements/getPatentList',
        type: 'post',
        dataType: 'json',
        data: {types: typeList},
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
 *
 */
    let bindData = dataList => {
    var table = $('table tbody'), patentList = [];
    table.empty();

    $.each(dataList, function (index, node) {
        patentList.push('<tr>');
        patentList.push('<td><input type="checkbox" name="patentID" value=' + node.id + '></td>');
        patentList.push('<td>' + (index + 1) + '</td>');
        patentList.push('<td>' + node.content + '</td>');
        patentList.push('<td>' + patent_type[node.type] + '</td>');
        patentList.push('<td>' + node.createdate + '</td>');
        patentList.push('<td>' + node.updatedate + '</td>');
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
    $('#save_patent').on("click", function () {
        addPatent();
    })
});

$('#del').click(function () {
    var id = $('input[name="patentID"]:checked').val();
    if (id == null) {
        common.successPrompt("请选中需要被删除的数据！");
        return;
    }
    $('#Del_Modal').modal('show');
})

$('#search').click(function () {
    getAllData();
});

$('#edit').click(function () {
    editPatent();
});


/**
 * 上传新增专利
 */
function addPatent() {
    var param = {};
    var patent_type = $('#patent_type').selectpicker('val');
    if (patent_type == null) {
        patent_type = 0;
    }
    param.type = patent_type;
    param.content = editor.txt.html();
    common.showWait();
    $.ajax({
        url: '../achievements/addPatent',
        type: 'post',
        dataType: 'json',
        data: param,
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
 * 删除专利
 */
$('#del_patent').click(function () {
    var id = $('input[name="patentID"]:checked').val();
    $('#Del_Modal').modal('hide');
    common.showWait();
    $.ajax({
        url: '../achievements/delPatent',
        type: 'post',
        dataType: 'json',
        data: {id: id},
        success: function (rdata) {
            common.closeWait();
            common.successPrompt(rdata.message);
            getAllData();
        },
        error: function () {
            common.closeWait();
            common.successPrompt("删除数据失败！");
        }
    })
})

/**
 * 通过ID修改专利
 */
function editPatent() {
    var id = $('input[name="patentID"]:checked').val();
    if (id == null) {
        common.successPrompt("请选中需要修改的数据！");
        return;
    }
    common.showWait();
    $.ajax({
        url: '../achievements/getPatentById',
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
 * 绑定数据到modal中
 * @param patent
 */
function bindModal(patent) {
    $('#Modal').modal('show');

    $('#addModal').empty();
    $('#addModal').append("修改专利");

    $('#typeID').val(patent.id);
    $('#patent_type').selectpicker('val', patent_type[patent.type]);
    editor.txt.html(patent.content);

    //移除save_patent上的click事件
    $('#save_patent').off();
    $('#save_patent').on("click", function () {
        updatePatent();
    })

}

/**
 * 上传编辑后的数据
 */
function updatePatent() {
    var param = {};
    var patent_type = $('#patent_type').selectpicker('val');
    if (patent_type == null) {
        patent_type = 0;
    }
    param.type = patent_type;
    param.content = editor.txt.html();
    param.id = $('#typeID').val();
    common.showWait();
    $.ajax({
        url: '../achievements/modifyPatent',
        type: 'post',
        dataType: 'json',
        data: param,
        success: function (rdata) {
            common.closeWait();
            common.successPrompt(rdata.message);
            $('#Modal').modal('hide');
            getAllData();
        },
        error: function () {
            common.closeWait();
            common.errorPrompt("修改数据失败！");
        }
    })
}


/**
 * 初始化富文本编辑器
 */
var E = window.wangEditor;
var editor = new E('#patent_text');
editor.create();
/**********************end*******************/

/**
 * 页面渲染后加载此函数
 */
$(document).ready(function () {
        bindPatentType();
        getAllData();
    }
);