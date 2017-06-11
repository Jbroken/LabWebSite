package com.wncg.controller.manage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bo.e.zhao on 5/24/2017.
 */
@Controller
@RequestMapping("/index")
public class UserManageController {

    @RequestMapping("/home")
    public String index(){
        return "home/index";
    }
}
