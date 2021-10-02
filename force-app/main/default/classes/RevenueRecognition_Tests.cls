/**
 * Created by Brooks Johnson on 10/1/2021.
 */

@IsTest
public with sharing class RevenueRecognition_Tests {

    @IsTest
    static void isRecognizableBy(){
        //given
        RevenueRecognition revenueRecognition = new RevenueRecognition(new Money(10), Date.newInstance(2010, 01, 01));
        //when
        Boolean result1 = revenueRecognition.isRecognizableBy(Date.newInstance(2010, 01, 02));
        Boolean result2 = revenueRecognition.isRecognizableBy(Date.newInstance(2010, 01, 01));
        Boolean result3 = revenueRecognition.isRecognizableBy(Date.newInstance(2009, 12, 31));
        //then
        System.assert(result1 == true);
        System.assert(result2 == true);
        System.assert(result3 == false);
    }


}