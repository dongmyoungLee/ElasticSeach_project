package com.elastic.search.dto;

public class MatchQueryDto {


    private String index;
    private String field;
    private String keyword;

    public MatchQueryDto(String index, String field, String keyword) {
        this.index = index;
        this.field = field;
        this.keyword = keyword;
    }

    public String getIndex() {
        return index;
    }

    public String getField() {
        return field;
    }

    public String getKeyword() {
        return keyword;
    }
}