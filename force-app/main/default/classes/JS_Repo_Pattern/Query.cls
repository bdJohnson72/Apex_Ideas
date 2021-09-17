/**
 * Created by brooks on 9/14/2021.
 */

public with sharing class Query {
    public enum Operator {
        EQUALS,
        NOT_EQUALS,
        LESS_THAN,
        LESS_THAN_or_EQUAL,
        GREATER_THAN,
        GREATER_THAN_OR_EQUAL
    }
    private final Operator operator;

    public Query(SObjectField field, Operator operator, Object predicate){}
}