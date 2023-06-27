package com.elastic.search.controller;

import com.elastic.search.service.ElasticService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyDataSearcher {

    private final ElasticService elasticService;

    public MyDataSearcher(ElasticService elasticService) {
        this.elasticService = elasticService;
    }

    @GetMapping("/signup")
    public String getpage(){
          elasticService.search("shakespeare","speaker","STER");
        return "signup";
    }
}



    // 다른 기능들...
