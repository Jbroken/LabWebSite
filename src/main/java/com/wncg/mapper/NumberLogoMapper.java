package com.wncg.mapper;

import com.wncg.pojo.NumberLogo;

public interface NumberLogoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NumberLogo record);

    int insertSelective(NumberLogo record);

    NumberLogo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(NumberLogo record);

    int updateByPrimaryKey(NumberLogo record);
}