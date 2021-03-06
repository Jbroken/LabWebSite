/**
 * Created by BZhao on 2017/6/23.
 */
let common={
    showWait: () => {
        $(document.body).append('<div class="fakeloader"></div>');
        $(".fakeloader").fakeLoader({
            timeToHide:12000000,
            spinner:"spinner1",
            bgColor:"rgba(52,73,94,0.2)"
        });
    },
    closeWait: () => {
        $(".fakeloader").remove();
    },
    successPrompt: Msg => {
        $.alert({
            title: '消息提示',
            type: 'blue',
            content: Msg
        });
    },
    errorPrompt: Msg => {
        $.alert({
            title: '错误提示',
            type: 'red',
            content: Msg
        });
    }
};
