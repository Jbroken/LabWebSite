package com.wncg.service;

import com.wncg.pojo.Patent;
import com.wncg.vojo.PageT;

import java.util.List;

/**
 * Created by BZhao on 2017/6/12.
 */
public interface IAchievementsService {
    List<Patent> getPatentList();

    void addPatent(Patent patents);

    void delPatent(int id);

    void modifyPatent(Patent patent);

    Patent getPatentById(int id);
}
