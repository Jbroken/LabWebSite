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
    param.iscomplete=$('#iscompleted').val();
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
        },
        error: function () {
            common.closeWait();
            common.errorPrompt("上传数据失败！")
        }
    })

});
