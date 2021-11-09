/**
 * Created by bjohnson on 10/25/2021.
 */

public with sharing class Franc extends Money {

	public Franc(Decimal amount){
		super(amount);
	}

	public Franc times(Integer multiple){
		Franc newFranc = new Franc(amount * multiple);
		return newFranc;
	}
}