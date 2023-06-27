package com.elastic.search.service;

import com.elastic.config.ElasticTemplate;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.springframework.stereotype.Service;


import java.util.Map;

@Service
public class ElasticService {

    private final ElasticTemplate elasticTemplate;

    public ElasticService(ElasticTemplate elasticTemplate) {
        this.elasticTemplate = elasticTemplate;
    }


    public void search(String index, String field, String what) {

//        RestHighLevelClient elasticsearchClient = ElasticsearchConfig.elasticsearchClient();

        SearchResponse searchResponse = elasticTemplate.didYouMeanSearch(index, field, what);

        SearchHits searchHits = searchResponse.getHits();

        Map<String, Object> sourceAsMap = null;

        /// 처리를 조금 이쁘게
        for (SearchHit hit : searchHits) {
            sourceAsMap = hit.getSourceAsMap();
            for (String key : sourceAsMap.keySet()) {
                Object value = sourceAsMap.get(key);
                System.out.println("Field: " + key + ", Value: " + value);
            }
        }


    }

}
