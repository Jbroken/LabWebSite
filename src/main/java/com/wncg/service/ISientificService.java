package com.wncg.service;

import com.wncg.pojo.ScientificResearch;

import java.util.List;

/**
 * Created by jing on 2017/6/20.
 */
public interface ISientificService {
    void addScientific(ScientificResearch scientificResearch);

    List<ScientificResearch> getScientificList();


}
