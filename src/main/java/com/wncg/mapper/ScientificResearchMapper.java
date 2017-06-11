package com.wncg.mapper;

import com.wncg.pojo.ScientificResearch;

public interface ScientificResearchMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ScientificResearch record);

    int insertSelective(ScientificResearch record);

    ScientificResearch selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ScientificResearch record);

    int updateByPrimaryKey(ScientificResearch record);
}