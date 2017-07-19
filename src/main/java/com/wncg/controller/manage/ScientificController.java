package com.wncg.controller.manage;

import com.wncg.pojo.Patent;
import com.wncg.pojo.ScientificResearch;
import com.wncg.service.IScientificService;
import com.wncg.service.impl.ScientificService;
import com.wncg.vojo.Page;
import com.wncg.vojo.PageT;
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

    /**
     * 主页
     * @return
     */
    @RequestMapping("/scientific")
    public String getScientificIndex(){return "achievements/scientific";}

    /**
     * 增加科研项目
     * @param scientificResearch
     * @return
     */
    @RequestMapping("/addScientific")
    @ResponseBody
    public Page addScientific(ScientificResearch scientificResearch){
        Page page=new Page();
        scientificService.addScientific(scientificResearch);
        page.setMessage("成功添加一条数据！");
        page.setSuccess(true);
        return page;
    }


    /**
     * 查询
     * @param type
     * @return
     */
    @RequestMapping("/getScientificList")
    @ResponseBody
    public List<ScientificResearch> getScientificList(String type){
        return scientificService.getScientificList(type);
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/deleteScientific")
    @ResponseBody
    public Page deleteScientific(int id){
        Page page=new Page();
        scientificService.deleteScientific(id);
        page.setMessage("成功删除");
        page.setSuccess(true);
        return page;
    }

    /**
     * id查找
     * @param id
     * @return
     */
    @RequestMapping("/scientificById")
    @ResponseBody
    public PageT<ScientificResearch> scientificById(int id){
        PageT<ScientificResearch> pageT = new PageT<ScientificResearch>();
        pageT.setData(scientificService.scientificById(id));
        pageT.setMessage("获取数据成功！");
        pageT.setSuccess(true);
        return pageT;
    }

    /**
     * 更新
     * @param scientificResearch
     * @return
     */
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
