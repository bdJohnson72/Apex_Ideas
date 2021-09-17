/**
 * Created by brooks on 9/14/2021.
 */

public with sharing class OpportunityUpdater {
    private final OpportunityLineItemRepo oppLineItemRepo;

    public OpportunityUpdater(OpportunityLineItemRepo oppLineItemRepo){
        this.oppLineItemRepo = oppLineItemRepo;
    }
}