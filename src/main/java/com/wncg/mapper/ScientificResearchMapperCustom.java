package com.wncg.mapper;

import com.wncg.pojo.ScientificResearch;

import java.util.List;

/**
 * Created by jing on 2017/6/20.
 */
public interface ScientificResearchMapperCustom {
    void addScientificRearch(ScientificResearch scientificResearch);

    void deletScientific(int id);

    List<ScientificResearch> ScientificList();


}
