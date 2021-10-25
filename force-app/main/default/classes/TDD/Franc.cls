/**
 * Created by bjohnson on 10/25/2021.
 */

public with sharing class Franc {
	private Decimal amount;

	public Franc(Decimal amount){
		this.amount = amount;
	}

	public Franc times(Integer multiple){
		Franc newFranc = new Franc(amount * multiple);
		return newFranc;
	}


	public Boolean equals(Object obj) {
		Franc franc = (Franc) obj;
		return this.amount == franc.amount;
	}

}