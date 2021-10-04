/**
 * Created by Brooks Johnson on 10/1/2021.
 */

public with sharing class RevenueRecognition {
    public Money amount { get; private set; }
    private Date contractDate;

    public RevenueRecognition(Money amount, Date contractDate){
        this.amount = amount;
        this.contractDate = contractDate;
    }

    public Boolean isRecognizableBy(Date asOf){
        return this.contractDate < asOf || asOf == contractDate;
    }
}