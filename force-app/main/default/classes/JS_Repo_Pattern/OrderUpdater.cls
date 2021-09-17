/**
 * Created by brooks on 9/14/2021.
 */

public with sharing class OrderUpdater {

    private final OpportunityLineItemRepo opportunityLineItemRepo;

    public OrderUpdater(OpportunityLineItemRepo opportunityLineItemRepo) {
        this.opportunityLineItemRepo = opportunityLineItemRepo;
    }

    public void checkOrders(List<Order> orders) {
        Map<Id, List<Order>> accountIdToOrder = new Map<Id, List<Order>>();
        for (Order order : orders) {
            if (accountIdToOrder.containsKey(order.AccountId)) {
                List<Order> accountOrders = accountIdToOrder.get(order.AccountId);
                accountOrders.add(order);
            } else {
                accountIdToOrder.put(order.AccountId, new List<Order>{
                        order
                });
            }
        }
        List<Opportunity> associatedOpps = [
                SELECT Id, Description
                FROM Opportunity
                WHERE IsWon = true
                AND AccountId = :accountIdToOrder.keySet()
        ];
        Map<Id, Opportunity> oppIdToOpp = new Map<Id, Opportunity>(associatedOpps);
        List<OpportunityLineItem> lineItems = this.opportunityLineItemRepo.getLineItems(oppIdToOpp.keySet());
        for(OpportunityLineItem lineItem : lineItems) {
            if(lineItem.Description == 'order related business logic criteria') {
                Opportunity opp = oppIdToOpp.get(lineItem.OpportunityId);
                opp.Description = 'Order Error';
            }
        }
    }
}