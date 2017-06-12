package com.wncg.service.impl;

import com.wncg.mapper.PatentMapper;
import com.wncg.mapper.PatentMapperCustom;
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
    PatentMapperCustom patentMapperCustom;
    @Autowired
    PatentMapper patentMapper;

    public List<Patent> getPatentList() {
        return patentMapperCustom.getPatentList();
    }

    public void addPatent(Patent patents) {
        patentMapper.insert(patents);
    }

    public void delPatent(int id) {
        patentMapperCustom.delPatentById(id);
    }

    public void modifyPatent(Patent patent) {
        patentMapper.updateByPrimaryKeySelective(patent);
    }

    public Patent getPatentById(int id) {
        return patentMapperCustom.getPatentById(id);
    }
}
