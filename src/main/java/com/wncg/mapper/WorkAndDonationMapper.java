package com.wncg.mapper;

import com.wncg.pojo.WorkAndDonation;

public interface WorkAndDonationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WorkAndDonation record);

    int insertSelective(WorkAndDonation record);

    WorkAndDonation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WorkAndDonation record);

    int updateByPrimaryKey(WorkAndDonation record);
}