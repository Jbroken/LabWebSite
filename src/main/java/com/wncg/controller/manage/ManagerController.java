package com.wncg.controller.manage;

import com.wncg.service.IManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bo.e.zhao on 5/24/2017.
 */
@Controller
@RequestMapping("/index")
public class ManagerController {
    @Autowired
    IManagerService managerService;

    @RequestMapping("/login")
    public String index(){
        return "home/index";
    }
}
