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


$('#add').click(function () {
    editor.txt.clear();
    $('#Modal').modal('show');
});

/**
 * 上传新增项目
 */
$('#save_scientific').click(function () {
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

});


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
