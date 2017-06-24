package com.wncg.controller.manage;

import com.wncg.pojo.Patent;
import com.wncg.service.IAchievementsService;
import com.wncg.vojo.Page;
import com.wncg.vojo.PageT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by BZhao on 2017/6/12.
 */
@Controller
@RequestMapping("/achievements")
public class AchievementsController {
    @Autowired
    private IAchievementsService achievementsService;

    /**
     * 返回团队专利管理主页
     * @return
     */
    @RequestMapping("/patent")
    public String getPatentIndex(){
        return "achievements/patent";
    }

    /**
     * 获取所有团队专利数据
     * @return
     */
    @RequestMapping("/getPatentList")
    @ResponseBody
    public List<Patent> getPatentList(){
        return achievementsService.getPatentList();
    }

    /**
     * 通过id获取到一条数据
     * @param id
     * @return
     */
    @RequestMapping("/getPatentById")
    @ResponseBody
    public PageT<Patent> getPatentById(int id){
        PageT<Patent> pageT = new PageT<Patent>();
        pageT.setData(achievementsService.getPatentById(id));
        pageT.setMessage("获取数据成功！");
        pageT.setSuccess(true);
        return pageT;
    }

    /**
     * 添加团队专利
     * @param patents
     * @return
     */
    @RequestMapping("/addPatent")
    @ResponseBody
    public Page addPatent(Patent patents){
        Page page = new Page();
        achievementsService.addPatent(patents);
        page.setMessage("成功添加一条数据！");
        page.setSuccess(true);
       return page;
    }

    /**
     * 通过id删除团队专利
     * @param id
     * @return
     */
    @RequestMapping("/delPatent")
    @ResponseBody
    public Page delPatent(int id){
        Page page = new Page();
        achievementsService.delPatent(id);
        page.setMessage("成功删除一条数据！");
        page.setSuccess(true);
        return page;
    }

    /**
     * 通过id来修改团队专利数据
     * @param patent
     * @return
     */
    @RequestMapping("/modifyPatent")
    @ResponseBody
    public Page modifyPatent(Patent patent){
        Page page = new Page();
        achievementsService.modifyPatent(patent);
        page.setMessage("成功修改一条数据！");
        page.setSuccess(true);
        return page;
    }

}
