package com.wncg.mapper;

import com.wncg.pojo.TeamShow;

public interface TeamShowMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TeamShow record);

    int insertSelective(TeamShow record);

    TeamShow selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TeamShow record);

    int updateByPrimaryKey(TeamShow record);
}