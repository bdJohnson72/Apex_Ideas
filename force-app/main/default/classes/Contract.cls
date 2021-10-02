/**
 * Created by Brooks Johnson on 10/1/2021.
 */

public with sharing class Contract {

    private List<RevenueRecognition> revenueRecognitions = new List<RevenueRecognition>();

    public Contract(List<RevenueRecognition> revenueRecognitions){
        this.revenueRecognitions = revenueRecognitions;
    }

    public Money recognizedRevenue(Date asOf ){
        Integer result = 0;
        for (RevenueRecognition revenueRecognition : this.revenueRecognitions){
            if(revenueRecognition.isRecognizableBy(asOf)){
                result  += revenueRecognition.amount.amount;
            }
        }
        return new Money(result);
    }

}