package com.wncg.query;

/**
 * Created by BZhao on 2017/6/11.
 */
public class Query {

    //数据总条数
    private int total;

    //每页显示的数量
    private int pageSize;

    //当前页码
    private int curPage;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurPage(){
        return  curPage;
    }

    public void setCurPage(int curPage){
        if(curPage < 0){
            this.curPage = 0;
        }
        else {
            this.curPage = (curPage -1) * pageSize;
        }
    }
}
