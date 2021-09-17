/**
 * Created by brooks on 9/14/2021.
 */

public with sharing class Repository implements IRepository {
    private List<SObjectField> fields;
    private SObjectType type;

    public Repository(SObjectType type, List<SObjectField> fields) {
        this.type = type;
        this.fields = fields;
    }

    public List<SObject> get(Query query) {
        return null;
    }

    public List<SObject> get(List<Query> queries) {
        return null;
    }
}