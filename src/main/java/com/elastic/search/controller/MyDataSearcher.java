package com.elastic.search.controller;

import com.elastic.search.service.ElasticService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyDataSearcher {

    private final ElasticService elasticService;

    public MyDataSearcher(ElasticService elasticService) {
        this.elasticService = elasticService;
    }

    @GetMapping("/signup")
    public String getpage(){
          elasticService.search("petitions_*","content","비오는날");
        return "main";
    }

}