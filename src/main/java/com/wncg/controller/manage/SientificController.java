package com.wncg.controller.manage;

import com.wncg.pojo.ScientificResearch;
import com.wncg.service.impl.SientificService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


/**
 * Created by jing on 2017/6/27.
 */
@Controller
@RequestMapping("/achievements")
public class SientificController {
    @Autowired
    SientificService sientificService;

    @RequestMapping("/sientific")
    public String getSientificIndex(){return "achievements/sientific";}

   /* @RequestMapping("/getsientific_completed")
    public String getsientific_completed(){
        List<ScientificResearch> scientificResearchList=sientificService.getScientificList();


    }*/



}
