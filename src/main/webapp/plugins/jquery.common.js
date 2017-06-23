/**
 * Created by BZhao on 2017/6/23.
 */
var common={
    openWait:function () {
        $('body').append('<div id="fakeLoader"></div>');
        $(".fakeloader").fakeLoader({
            spinner:"spinner1",
            bgColor:"#2ecc71", //加载时的背景颜色
        });
    }
}