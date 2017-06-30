package com.wncg.controller.manage;

import com.wncg.pojo.ScientificResearch;
import com.wncg.service.impl.ScientificService;
import com.wncg.vojo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by jing on 2017/6/28.
 */
@Controller
@RequestMapping("/scientific")
public class ScientificController {
    @Autowired
    ScientificService scientificService;

    @RequestMapping("/scientific")
    public String getScientificIndex(){return "achievements/scientific";}

   @RequestMapping("/addScientific")
   @ResponseBody
    public Page addScientific(ScientificResearch scientificResearch){
        Page page=new Page();
        scientificService.addScientific(scientificResearch);
        page.setMessage("成功添加一条数据！");
        page.setSuccess(true);
        return page;
   }
}
