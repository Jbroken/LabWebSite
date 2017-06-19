package com.wncg.mapper;

import com.wncg.pojo.Patent;

import java.util.List;

/**
 * Created by BZhao on 2017/6/12.
 */
public interface PatentMapperCustomer {
    List<Patent> getPatentList();

    void delPatentById(int id);

    Patent getPatentById(int id);
}
