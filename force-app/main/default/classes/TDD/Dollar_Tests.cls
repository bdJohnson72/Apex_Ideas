/**
 * Created by Brooks Johnson on 10/7/2021.
 */

@IsTest
public with sharing class Dollar_Tests {

    @IsTest
    static void testMultiplication(){
        Dollar five = new Dollar(5.0);
        five.times(2);
        System.assert(10.0 == five.amount);
    }
}