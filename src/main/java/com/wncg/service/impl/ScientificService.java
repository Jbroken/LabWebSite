package com.wncg.service.impl;

import com.wncg.mapper.ScientificResearchMapper;
import com.wncg.mapper.ScientificResearchMapperCustom;
import com.wncg.pojo.ScientificResearch;
import com.wncg.service.IScientificService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by jing on 2017/6/28.
 */
@Service("scientificService")
public class ScientificService implements IScientificService {
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

    public void deleteScientific(int id){
        scientificResearchMapperCustom.deleteScientific(id);
    }

    public List<ScientificResearch> getScientificList(String types){
        return scientificResearchMapperCustom.scientificList(types);
    }

    public void updateScientific(ScientificResearch scientificResearch){
        scientificResearch.setUpdatedate(new Date());
        scientificResearchMapper.updateByPrimaryKey(scientificResearch);
    }

    public ScientificResearch scientificById(int id){
        return scientificResearchMapperCustom.scientificById(id);
    }


}
