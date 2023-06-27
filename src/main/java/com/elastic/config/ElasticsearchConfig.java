package com.elastic.config;

import org.apache.http.HttpHost;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.RestClient;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ElasticsearchConfig {


    public static RestHighLevelClient elasticsearchClient() {
        return new RestHighLevelClient(
                RestClient.builder(HttpHost.create("localhost:9200"))
        );
    }
}