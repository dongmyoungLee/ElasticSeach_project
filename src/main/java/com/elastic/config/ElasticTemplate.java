package com.elastic.config;

import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.unit.Fuzziness;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.suggest.Suggest;
import org.elasticsearch.search.suggest.SuggestBuilder;
import org.elasticsearch.search.suggest.SuggestBuilders;
import org.elasticsearch.search.suggest.SuggestionBuilder;
import org.elasticsearch.search.suggest.term.TermSuggestionBuilder;
import org.springframework.stereotype.Component;

import javax.swing.text.html.Option;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Component
public class ElasticTemplate {

    public SearchResponse matchFuzzinessKeyword(String index, String field, String what) {
        SearchRequest searchRequest = new SearchRequest(index);
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchQuery(field, what).fuzziness(Fuzziness.AUTO));
        searchSourceBuilder.size(10); // 100개의 결과를 요청
        searchRequest.source(searchSourceBuilder);

        return execute(searchRequest);
    }

    public SearchResponse didYouMeanSuggestion(String index, String field, String query) {
        SearchRequest searchRequest = new SearchRequest(index);
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();

        // Did you mean 제안어 생성
        SuggestionBuilder<?> suggestionBuilder = SuggestBuilders.phraseSuggestion(field)
                .text(query)
                .maxErrors(5)
                .gramSize(3)
                .realWordErrorLikelihood(0.95f)
                .size(5);

        SuggestBuilder suggestBuilder = new SuggestBuilder().addSuggestion("did_you_mean", suggestionBuilder);
        searchSourceBuilder.suggest(suggestBuilder);

        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = execute(searchRequest);


        return searchResponse;
    }


    public SearchResponse execute(SearchRequest searchRequest) {
        SearchResponse searchResponse = null;

        try(RestHighLevelClient elasticsearchClient = ElasticsearchConfig.elasticsearchClient()) {

            searchResponse = elasticsearchClient.search(searchRequest, RequestOptions.DEFAULT);
            // 검색 결과 처리...
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println(searchResponse);

        return searchResponse;
    }
}
