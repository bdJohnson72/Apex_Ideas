/**
 * Created by Brooks Johnson on 10/1/2021.
 */

public with sharing class ThreeWayRecognitionStrategy extends RecognitionStrategy{
    public Integer firstOffset;
    public Integer secondOffset;

    public ThreeWayRecognitionStrategy(Integer firstOffset, Integer secondOffset ){
        this.firstOffset = firstOffset;
        this.secondOffset = secondOffset;
    }
    public override void calculateRevenueRecognitions(ContractII contract) {
        Money[] allocations = contract.allocateRevenue(3);
        contract.addRevenueRecognition(new RevenueRecognition(allocations[0],  contract.whenSigned));
        contract.addRevenueRecognition(new RevenueRecognition(allocations[1],  contract.whenSigned.addDays(firstOffset)));
        contract.addRevenueRecognition(new RevenueRecognition(allocations[2],  contract.whenSigned.addDays(secondOffset)));

    }
}