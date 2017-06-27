package com.wncg.query;

/**
 * Created by BZhao on 2017/6/11.
 */
public class Query {

    /**
     * 每页记录数
     */
    private int pageSize = 20;

    /**
     * 当前页码
     */
    private int curPage = 1;

    /**
     * 记录开始位置
     */
    private int offset = -1;

    /**
     * 排序
     * 格式：字段1 asc,字段2 desc
     */
    private String orderBy;

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public int getOffset() {

        if (offset < 0) {
            offset = (curPage - 1) * pageSize;
        }
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }


}
