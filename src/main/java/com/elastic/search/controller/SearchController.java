package com.elastic.search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {
    @PostMapping("/search")
    public ModelAndView mainPage(ModelAndView mav){
        mav.setViewName("/search");
        return mav;
    }
}
