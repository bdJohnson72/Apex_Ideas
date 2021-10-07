/**
 * Created by Brooks Johnson on 10/7/2021.
 */

public with sharing class Dollar {
    public Decimal amount { get; private set; }

    public Dollar(Decimal amount){
        this.amount = amount;
    }

    public void times(Integer multiple){
        this.amount *= multiple;
    }

}