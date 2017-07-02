package com.wncg.controller.manage;

import com.wncg.pojo.Patent;
import com.wncg.service.IScholarshipService;
import com.wncg.vojo.Page;
import javafx.scene.layout.Pane;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by ZXoho on 2017/7/1.
 */
@Controller
@RequestMapping("/scholarship")
public class ScholarshipController {
    @Autowired
    private IScholarshipService scholarshipService;
    /**
     * 返回学术成果主页
     * @return
     */
    @RequestMapping("/?")
    public String getScholarshipIndex(){
        return "?";
    }

    /**
     * 获取所有团队学术成果
     * @return
     */
    @@RequestMapping("/getScholarList")
    @ResponseBody
    public List<Scholarship> getScholarList (String [] types){
        return scholarshipService.getScholarList(types);
    }

    /**
     * 添加学术成果
     * @return
     */
    @RequestMapping("/addScholar")
    @ResponseBody
    public Page addScholar (Scholarship scholarship){
        Page page =new Page();
        scholarshipService.addScholar(patent1);
        page.setMessage("成功添加一条数据");
        page.setSuccess(true);
        return page;


    }
    /**
     * 删除学术成果
     * @return
     */

    @RequestMapping("/delScholar")
    @ResponseBody
    public Page delScholar(int id){
        Page page=new Page();
        scholarshipService.delScholar(id);
        page.setSuccess(true);
        page.setMessage("成功删除一条数据");
        return page;
    }
    /**
     * 修改学术成果
     * @return
     */
    @RequestMapping("/modifyScholar")
    @ResponseBody
    public Page modifyScholar(Scholarship scholarship){
        Page page =new Page();
        scholarshipService.modifyScholar(scholarship){
            page.setMessage("成功修改一条数据");
            page.setSuccess((true));
            return page;
        }
    }



}
