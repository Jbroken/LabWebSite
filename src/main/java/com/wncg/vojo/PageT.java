package com.wncg.vojo;

/**
 * Created by BZhao on 2017/6/11.
 * 使用泛型来定义页面的返回数据
 */
public class PageT<T> extends Page {

    private T data;

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
