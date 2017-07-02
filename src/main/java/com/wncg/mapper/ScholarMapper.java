package com.wncg.mapper;

import com.wncg.pojo.Patent;

import java.util.List;

/**
 * Created by ZXoho on 2017/7/1.
 */
public interface ScholarMapper {
    List<Patent> getScholarList(@param("types")String[] types);
    void delScholarshipById(int id);
    Patent getScholarById(int id);

}
