/**
 * Created by Brooks Johnson on 10/1/2021.
 */

public with sharing class Product {

    private String name;
    private RecognitionStrategy strategy;

    public Product(String name, RecognitionStrategy strategy){
        this.name = name;
        this.strategy = strategy;
    }

    public static Product newWordProcessor(String name){
        return new Product(name, new CompleteRecognitionStrategy());
    }

    public static Product newSpreadSheet(String name){
        return new Product(name, new ThreeWayRecognitionStrategy(60, 120));
    }

    public static Product newCalculator(String name){
        return new Product(name, new ThreeWayRecognitionStrategy(30, 60));
    }

    public void calculateRecognitions(ContractII contract){
        strategy.calculateRevenueRecognitions(contract);
    }
}