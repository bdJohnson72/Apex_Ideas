/**
 * Created by Brooks Johnson on 10/1/2021.
 */

public with sharing class ContractII {

    private Product product;
    public Money revenue { get; private set; }
    public Date whenSigned { get; private set; }
    public List<RevenueRecognition> revenueRecognitions;

    public ContractII(Product product, Money revenue, Date whenSigned){
        this.product = product;
        this.revenue = revenue;
        this.whenSigned = whenSigned;
        this.revenueRecognitions = new List<RevenueRecognition>();
    }

    public void addRevenueRecognition(RevenueRecognition revenueRecognition){
        this.revenueRecognitions.add(revenueRecognition);
    }

    public List<RevenueRecognition> getRecognitions(){
        return this.revenueRecognitions;
    }

    public List<Money> allocateRevenue(Integer allocationSchedule){
        List<Money> allocations = new List<Money>();
        Integer divisor = allocationSchedule;
        while(allocationSchedule > 0){
            allocations.add(new Money(this.revenue.amount / allocationSchedule));
            allocationSchedule --;
        }
        return allocations;
    }

    public void calculateRecognitions(){
        this.product.calculateRecognitions(this);
    }
}