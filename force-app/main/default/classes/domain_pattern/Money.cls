/**
 * Created by Brooks Johnson on 10/1/2021.
 */

public with sharing class Money {
   public  Integer amount { get; private set; }
    public Money(Integer amount){
        this.amount = amount;
    }

    public Boolean equals(Money money) {
        return this.amount == money.amount;
    }


    public override Integer hashCode() {
        return System.hashCode(this.amount);
    }
}