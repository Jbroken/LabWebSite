/**
 * Created by BZhao on 2017/6/23.
 */

var patent_type =["发明专利","实用新型","软件著作权"];

/**
 * 向服务器请求数据
 */
function getAllData() {
    common.openWait();
    $.ajax({
        url:'../achievements/getPatentList',
        type:'post',
        dataType:'json',
        success:function (rdata) {
            bindData(rdata);
        },
        error:function () {

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
     patentList.push('<td>'+(index+1)+'</td>');
     patentList.push('<td class="hidden"><input value= '+node.id+'/></td>');
     patentList.push('<td>'+node.content+'</td>');
     patentList.push('<td>'+patent_type[node.type]+'</td>');
     patentList.push('<td>'+node.createdate+'</td>');
     patentList.push('<td>'+node.updatedate+'</td>');
     patentList.push('</tr>');
 })
    table.append(patentList.join(' '));
}

$('#add').click(function () {
    $('#Modal').modal('show');
})

/**
 * 上传新增专利
 */
$('#save_patent').click(function () {
    var param ={};
    param.type = $('#patent_type').selectpicker('val');
    param.patent_content = editor.txt.text();
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

})


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

   getAllData()

)