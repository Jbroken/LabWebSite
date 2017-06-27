/**
 * Created by jing on 2017/6/25.
 */




$('#add').click(function () {
    editor.txt.clear();
    $('#Modal').modal('show');
});

/**
 * 上传新增专利
 */
$('#save_patent').click(function () {
    var param ={};
    param.type = $('#patent_type').selectpicker('val');
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
        }
    })

});


/**
 * 初始化富文本编辑器
 */
var E = window.wangEditor;
var editor = new E('#patent_text')
editor.create();


/**
 * 页面渲染后加载此函数
 */
$('body').ready(

    getAllData()
)