/**
 * Created by Brooks Johnson on 10/1/2021.
 */

@IsTest
public with sharing class ContractII_Tests {

    @IsTest
    static void allocateRevenueTest(){
        ContractII contract = new ContractII(Product.newCalculator('calculator'),
                new Money(90),
                Date.newInstance(2020, 01, 01));

        List<Money>  allocations = contract.allocateRevenue(3);
        System.assert(allocations.size() == 3);
        System.assert(allocations[0].amount == 30);
    }

    @IsTest
    static void testAll(){
        Product calculator = Product.newCalculator('calculator');
        Product word = Product.newSpreadSheet('spreadSheet');
        Product newWordProcessor = Product.newWordProcessor('wordprocessor');
        ContractII contract = new ContractII(calculator, new Money(900), Date.newInstance(2021, 09, 30));
        System.assert(contract.revenueRecognitions.size() == 0);
        contract.calculateRecognitions();
        System.assert(contract.revenueRecognitions.size() == 3);

    }
}