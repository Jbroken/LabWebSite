package com.wncg.controller.manage;

import com.wncg.pojo.ScientificResearch;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;

/**
 * Created by jing on 2017/6/30.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:applicationContext.xml")
public class ScientificControllerTest {
   @Resource
    ScientificController scientificController;

   @Test
    public void addscientific() throws Exception{
       ScientificResearch A=new ScientificResearch();
       A.setType("类型1");
       A.setContent("a");
       A.setIscomplete(0);
       scientificController.addScientific(A);
       System.out.println(A);
   }

   @Test
   public void getScientificList() throws Exception{
      String type="类型1";
      scientificController.getScientificList(type);
      System.out.println("success");
   }

   @Test
   public void scientificById() throws Exception{
      int id=1;
      scientificController.scientificById(id);
      System.out.println("success");
   }


}