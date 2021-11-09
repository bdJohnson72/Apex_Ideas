/**
 * Created by bjohnson on 11/9/2021.
 */

public with sharing abstract class Money {

	protected Decimal amount;

	public Money(Decimal amount) {
		this.amount = amount;
	}

	public Boolean equals(Object obj) {
		Money money = (Money) obj;
		return this.amount == money.amount;
	}
}