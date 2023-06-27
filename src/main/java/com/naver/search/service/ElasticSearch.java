package com.naver.search.service;

import com.naver.config.ElasticsearchConfig;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.springframework.stereotype.Service;


import java.io.IOException;
import java.util.Map;

@Service
public class ElasticSearch {




    public void search(String index, String field, String what) {

//        RestHighLevelClient elasticsearchClient = ElasticsearchConfig.elasticsearchClient();


        try(RestHighLevelClient elasticsearchClient = ElasticsearchConfig.elasticsearchClient()) {
            SearchRequest searchRequest = new SearchRequest(index);
            SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
            searchSourceBuilder.query(QueryBuilders.matchQuery(field, what));
            searchRequest.source(searchSourceBuilder);
            SearchResponse searchResponse = elasticsearchClient.search(searchRequest, RequestOptions.DEFAULT);

            // 검색 결과 처리...
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
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
