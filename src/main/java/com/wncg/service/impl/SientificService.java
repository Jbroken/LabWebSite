package com.wncg.service.impl;

import com.wncg.mapper.ScientificResearchMapperCustom;
import com.wncg.pojo.ScientificResearch;
import com.wncg.service.ISientificService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by jing on 2017/6/20.
 */
@Service
public class SientificService implements ISientificService{
    @Autowired
    ScientificResearchMapperCustom scientificResearchMapperCustom;

    public void addScientific(ScientificResearch scientificResearch) {

    }
}
