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
import org.elasticsearch.search.suggest.term.TermSuggestionBuilder;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.List;

@Component
public class ElasticTemplate {

    public SearchResponse matchFuzzinessKeyword(String index, String field,String what){
        SearchRequest searchRequest = new SearchRequest(index);
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchQuery(field, what).fuzziness(Fuzziness.AUTO));
        searchRequest.source(searchSourceBuilder);

        return execute(searchRequest);
    }

    public SearchResponse didYouMeanSearch(String index, String field, String query) {
        SearchRequest searchRequest = new SearchRequest(index);
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();

        // QueryBuilders.matchQuery 대신 Suggest API를 사용하기 위해 SuggestBuilder를 생성합니다.
        SuggestBuilder suggestBuilder = new SuggestBuilder();

        // Did You Mean 기능을 위한 TermSuggestionBuilder를 생성하고 검색할 필드와 검색어를 설정합니다.
        TermSuggestionBuilder termSuggestionBuilder = SuggestBuilders.termSuggestion(field).text(query);

        // TermSuggestionBuilder를 SuggestBuilder에 추가합니다.
        suggestBuilder.addSuggestion("did_you_mean", termSuggestionBuilder);

        // SearchSourceBuilder에 SuggestBuilder를 설정합니다.
        searchSourceBuilder.suggest(suggestBuilder);

        // SearchRequest에 SearchSourceBuilder를 설정합니다.
        searchRequest.source(searchSourceBuilder);
        SearchResponse searchResponse = execute(searchRequest);

        Suggest suggest = searchResponse.getSuggest();

        Suggest.Suggestion<?> didYouMeanSuggestion = suggest.getSuggestion("did_you_mean");

// Suggestion 결과가 있을 경우에만 처리합니다.
        if (didYouMeanSuggestion != null) {
            // Suggestion 결과의 옵션들을 가져옵니다.
            List<? extends Suggest.Suggestion.Entry<?>> entries =
                    (List<? extends Suggest.Suggestion.Entry<?>>) didYouMeanSuggestion.getEntries();

            // 각 옵션에 대한 처리
            for (Suggest.Suggestion.Entry<?> entry : entries) {
                List<? extends Suggest.Suggestion.Entry.Option> options = entry.getOptions();

                // 각 옵션의 정보 출력
                for (Suggest.Suggestion.Entry.Option option : options) {
                    String suggestedText = option.getText().string();
                    float score = option.getScore();

                    // 검색어 추천 결과 출력
                    System.out.println("Suggested Text: " + suggestedText);
                    System.out.println("Score: " + score);
                }
            }
        }
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
        return searchResponse;
    }
}
