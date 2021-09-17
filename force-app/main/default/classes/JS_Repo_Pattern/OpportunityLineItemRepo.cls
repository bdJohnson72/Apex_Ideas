/**
 * Created by brooks on 9/14/2021.
 */

public with sharing virtual class OpportunityLineItemRepo {

    public virtual List<OpportunityLineItem> getLineItems(Set<Id> oppIds) {
        return [
                SELECT Id, Description
                FROM OpportunityLineItem
                WHERE OpportunityId = :oppIds
        ];

    }

}