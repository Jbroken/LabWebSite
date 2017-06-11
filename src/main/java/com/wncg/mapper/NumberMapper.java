package com.wncg.mapper;

import com.wncg.pojo.Number;

public interface NumberMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Number record);

    int insertSelective(Number record);

    Number selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Number record);

    int updateByPrimaryKeyWithBLOBs(Number record);

    int updateByPrimaryKey(Number record);
}