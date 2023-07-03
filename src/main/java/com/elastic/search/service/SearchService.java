package com.elastic.search.service;

import com.elastic.config.ElasticTemplate;
import com.elastic.elasticsearch.ElasticsearchTemplate;
import com.elastic.search.dto.MatchQueryDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SearchService {

    private final ElasticsearchTemplate elasticsearchTemplate;

    @Autowired
    public SearchService(ElasticsearchTemplate elasticsearchTemplate) {
        this.elasticsearchTemplate = elasticsearchTemplate;
    }

    public List<Map<String, Object>> findByKeyword(String keyword){

        List<Map<String, Object>> petitions = elasticsearchTemplate.findByKeyword(
                new MatchQueryDto(
                        "petitions_*",
                        "content",
                        keyword));

        return petitions;
    }
}
