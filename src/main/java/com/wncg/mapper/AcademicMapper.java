package com.wncg.mapper;

import com.wncg.pojo.Academic;

public interface AcademicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Academic record);

    int insertSelective(Academic record);

    Academic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Academic record);

    int updateByPrimaryKey(Academic record);
}