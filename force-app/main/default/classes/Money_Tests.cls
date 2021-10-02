/**
 * Created by Brooks Johnson on 10/1/2021.
 */

@IsTest
private class Money_Tests {
    @IsTest
    static void itShouldSetAmount() {
        Money money = new Money(5);
        System.assert(money.amount == 5, 'Amount should be set to 5');
    }

    @IsTest
    static void theyShouldBeEqual(){
        //given
        Money five = new Money(5);
        Money fiveA = new Money(5);
        //when
        System.assert(fiveA.equals(five));
    }

    @IsTest
    static void theyShouldHaveSameHashCode(){
        //given
        Money five = new Money(5);
        Money fiveA = new Money(5);
        //when
        System.assert(five.hashCode() == fiveA.hashCode());
    }
}