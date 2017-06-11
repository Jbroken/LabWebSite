package com.wncg.mapper;

import com.wncg.pojo.CooperateAndCommunication;

public interface CooperateAndCommunicationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CooperateAndCommunication record);

    int insertSelective(CooperateAndCommunication record);

    CooperateAndCommunication selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CooperateAndCommunication record);

    int updateByPrimaryKey(CooperateAndCommunication record);
}