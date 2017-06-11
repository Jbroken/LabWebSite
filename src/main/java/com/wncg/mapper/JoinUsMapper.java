package com.wncg.mapper;

import com.wncg.pojo.JoinUs;

public interface JoinUsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(JoinUs record);

    int insertSelective(JoinUs record);

    JoinUs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(JoinUs record);

    int updateByPrimaryKey(JoinUs record);
}