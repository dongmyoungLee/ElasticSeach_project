package com.elastic.search.controller;

import com.elastic.search.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api")
public class SearchController {

    private final SearchService searchService;

    @Autowired
    public SearchController(SearchService searchService) {
        this.searchService = searchService;
    }

    @GetMapping("/search")
    public ModelAndView findByKeyword(
            @RequestParam String keyword,
            ModelAndView mav) {

        List<Map<String, Object>> petitions =  searchService.findByKeyword(keyword);

        mav.addObject("petitions", petitions);
        mav.setViewName("/search");
        return mav;
    }
}
