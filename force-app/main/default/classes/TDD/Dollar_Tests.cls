/**
 * Created by Brooks Johnson on 10/7/2021.
 */

@IsTest
public with sharing class Dollar_Tests {

    @IsTest
    static void testMultiplication(){
        Dollar five = new Dollar(5.0);
        System.assert(five == new Dollar(5));
        System.assert(new Dollar(10) == five.times(2));
        System.assert(new Dollar(15) == five.times(3));
    }


    @IsTest
    static void testEquality(){
        System.assert(new Franc(5.0).equals(new Franc(5.0)));
        Franc five = new Franc(5.0);
        Franc six = new Franc(6.0);
        System.assert(false == five.equals(six));
    }

}