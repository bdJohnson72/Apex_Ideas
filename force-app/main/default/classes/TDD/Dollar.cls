/**
 * Created by Brooks Johnson on 10/7/2021.
 */

public with sharing class Dollar extends Money {

    public Dollar(Decimal amount){
       super(amount);
    }

    public Dollar times(Integer multiple){
        Dollar newDollar = new Dollar(amount * multiple);
        return newDollar;
    }


}