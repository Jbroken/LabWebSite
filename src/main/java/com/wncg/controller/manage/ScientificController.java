package com.wncg.controller.manage;

import com.wncg.pojo.ScientificResearch;
import com.wncg.service.IScientificService;
import com.wncg.service.impl.ScientificService;
import com.wncg.vojo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by jing on 2017/6/28.
 */
@Controller
@RequestMapping("/scientific")
public class ScientificController {
    @Autowired
    private IScientificService scientificService;

    /*
    * 主页
    * */
    @RequestMapping("/scientific")
    public String getScientificIndex(){return "achievements/scientific";}

    /*
    * 添加科研项目
    *
    * */
    @RequestMapping("/addScientific")
    @ResponseBody
    public Page addScientific(ScientificResearch scientificResearch){
        Page page=new Page();
        scientificService.addScientific(scientificResearch);
        page.setMessage("成功添加一条数据！");
        page.setSuccess(true);
        return page;
    }


    /*
    * 查询
    * */
    @RequestMapping("/getScientificList")
    @ResponseBody
    public List<ScientificResearch> getScientificList(String type){

        return scientificService.getScientificList(type);
    }

    /*
    * 删除
    * */
    @RequestMapping("/deleteScientific")
    @ResponseBody
    public Page deleteScientific(int id){
        Page page=new Page();
        scientificService.deleteScientific(id);
        page.setMessage("成功删除");
        page.setSuccess(true);
        return page;
    }

    /*
    * 更新
    * */
    @RequestMapping("/updateScientific")
    @ResponseBody
    public Page updateScientific(ScientificResearch scientificResearch){
        Page page=new Page();
        scientificService.updateScientific(scientificResearch);
        page.setMessage("更新成功");
        page.setSuccess(true);
        return page;
    }
}
