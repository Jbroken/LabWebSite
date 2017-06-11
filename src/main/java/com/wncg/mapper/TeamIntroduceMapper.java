package com.wncg.mapper;

import com.wncg.pojo.TeamIntroduce;

public interface TeamIntroduceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TeamIntroduce record);

    int insertSelective(TeamIntroduce record);

    TeamIntroduce selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TeamIntroduce record);

    int updateByPrimaryKey(TeamIntroduce record);
}