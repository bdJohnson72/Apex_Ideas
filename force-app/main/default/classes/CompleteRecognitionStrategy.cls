/**
 * Created by Brooks Johnson on 10/1/2021.
 */

public with sharing class CompleteRecognitionStrategy extends RecognitionStrategy{


    public override void calculateRevenueRecognitions(ContractII contract) {
        contract.addRevenueRecognition(new RevenueRecognition(contract.revenue, contract.whenSigned));
    }

}