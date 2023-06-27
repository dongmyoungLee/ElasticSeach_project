package com.naver.search.controller;

import com.naver.search.service.ElasticSearch;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MyDataSearcher {

    private final ElasticSearch elasticSearch;

    public MyDataSearcher(ElasticSearch elasticSearch) {
        this.elasticSearch = elasticSearch;
    }

    @GetMapping("/signup")
    public String getpage(){
          elasticSearch.search("shakespeare","text_entry","die");
        return "signup";


    }
  //@PostMapping()

}



    // 다른 기능들...
