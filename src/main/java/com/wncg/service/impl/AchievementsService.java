package com.wncg.service.impl;

import com.wncg.mapper.PatentMapper;
import com.wncg.mapper.PatentMapperCustomer;
import com.wncg.pojo.Patent;
import com.wncg.service.IAchievementsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public List<Patent> getPatentList() {
        return patentMapperCustomer.getPatentList();
    }

    public void addPatent(Patent patents) {
        patentMapper.insert(patents);
    }

    public void delPatent(int id) {
        patentMapperCustomer.delPatentById(id);
    }

    public void modifyPatent(Patent patent) {
        patentMapper.updateByPrimaryKeySelective(patent);
    }

    public Patent getPatentById(int id) {
        return patentMapperCustomer.getPatentById(id);
    }
}
