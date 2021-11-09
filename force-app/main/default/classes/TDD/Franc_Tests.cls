/**
 * Created by bjohnson on 11/9/2021.
 */

@IsTest
public with sharing class Franc_Tests {

	@IsTest
	static void testFrancMultiplication(){
		Franc five = new Franc(5.0);
		System.assert(five == new Franc(5));
		System.assert(new Franc(10) == five.times(2));
		System.assert(new Franc(15) == five.times(3));
	}

	@IsTest
	static void testFrancEquality(){
		System.assert(new Dollar(5.0).equals(new Dollar(5.0)));
		Dollar five = new Dollar(5.0);
		Dollar six = new Dollar(6.0);
		System.assert(false == five.equals(six));
	}
}