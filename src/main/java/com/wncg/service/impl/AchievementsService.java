package com.wncg.service.impl;

import com.wncg.mapper.PatentMapper;
import com.wncg.mapper.PatentMapperCustomer;
import com.wncg.pojo.Patent;
import com.wncg.service.IAchievementsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by BZhao on 2017/6/12.
 */
@Service("achievementsService")
public class AchievementsService implements IAchievementsService {
    @Autowired
    private PatentMapperCustomer patentMapperCustomer;
    @Autowired
    private PatentMapper patentMapper;

    public List<Patent> getPatentList(String[] types) {
        return patentMapperCustomer.getPatentList(types);
    }

    public void addPatent(Patent patents) {
        patents.setCreatedate(new Date());
        patents.setUpdatedate(new Date());
        patents.setIspass(false);
        patentMapper.insert(patents);
    }

    public void delPatent(int id) {
        patentMapperCustomer.delPatentById(id);
    }

    public void modifyPatent(Patent patent) {
        patent.setUpdatedate(new Date());
        patentMapper.updateByPrimaryKeySelective(patent);
    }

    public Patent getPatentById(int id) {
        return patentMapperCustomer.getPatentById(id);
    }

}
