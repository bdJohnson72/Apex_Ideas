/**
 * Created by brooks on 9/14/2021.
 */

public with sharing class OpportunityLineItemRepoMock extends OpportunityLineItemRepo {

    public List<OpportunityLineItem> lineItems { get; set; }

    public override List<OpportunityLineItem> getLineItems(Set<Id> oppIds){
        return lineItems;
    }

}