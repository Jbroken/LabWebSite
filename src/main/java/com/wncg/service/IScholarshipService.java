package com.wncg.service;

import com.wncg.pojo.Patent;

/**
 * Created by ZXoho on 2017/7/1.
 */
public interface IScholarshipService {
    List<scholarship> getScholarList (String[] types);
    void addScholar (Scholarship scholarships);
    void delScholar(int id);
    void modifyScholar(Scholarship scholarship);
    Scholarship  getScholarById(int id);

}
