package com.wncg.service.impl;

import com.wncg.mapper.ScientificResearchMapper;
import com.wncg.mapper.ScientificResearchMapperCustom;
import com.wncg.pojo.ScientificResearch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by jing on 2017/6/28.
 */
@Service("scientificservice")
public class ScientificService {
    @Autowired
    ScientificResearchMapperCustom scientificResearchMapperCustom;
    @Autowired
    ScientificResearchMapper scientificResearchMapper;

    public void addScientific(ScientificResearch scientificResearch) {
        scientificResearch.setCreatedate(new Date());
        scientificResearch.setUpdatedate(new Date());
        scientificResearch.setIspass(false);
        scientificResearchMapper.insert(scientificResearch);
    }

    public void deletScientific(int id){

    }

    public List<ScientificResearch> getScientificList(String types){
        return scientificResearchMapperCustom.scientificList(types);
    }


}
