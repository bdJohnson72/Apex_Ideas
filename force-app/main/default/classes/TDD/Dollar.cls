/**
 * Created by Brooks Johnson on 10/7/2021.
 */

public with sharing class Dollar {
    public Decimal amount { get; private set; }

    public Dollar(Decimal amount){
        this.amount = amount;
    }

    public Dollar times(Integer multiple){
        Dollar newDollar = new Dollar(amount * multiple);
        return newDollar;
    }


    public Boolean equals(Object obj) {
        Dollar dollar = (Dollar) obj;
        return this.amount == dollar.amount;
     }
}