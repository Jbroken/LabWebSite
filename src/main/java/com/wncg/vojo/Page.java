package com.wncg.vojo;

/**
 * Created by BZhao on 2017/6/11.
 */
public class Page {

    //返回信息
    private String message;

    //错误代码
    private int errCode;

    //是否成功
    private boolean success;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getErrCode() {
        return errCode;
    }

    public void setErrCode(int errCode) {
        this.errCode = errCode;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}
