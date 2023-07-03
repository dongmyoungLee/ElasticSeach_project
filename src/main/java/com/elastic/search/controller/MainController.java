package com.elastic.search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    @GetMapping("/main")
    public ModelAndView mainPage(ModelAndView mav){
        mav.setViewName("/main");
        return mav;
    }

    @PostMapping("/search")
    public ModelAndView searchPage(ModelAndView mav){
        mav.setViewName("/search");
        return mav;
    }

    @GetMapping("/detail")
    public ModelAndView detailPage(ModelAndView mav){
        mav.setViewName("/detail");
        return mav;
    }

}