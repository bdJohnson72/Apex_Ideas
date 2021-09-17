/**
 * Created by brooks on 9/14/2021.
 */

public interface IRepository {
    List<SObject> get(Query query);
    List<SObject> get(List<Query> queries);
}