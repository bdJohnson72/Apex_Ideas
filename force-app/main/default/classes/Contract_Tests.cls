/**
 * Created by Brooks Johnson on 10/1/2021.
 */

@IsTest
private class Contract_Tests {
    @IsTest
    static void itShouldReturnCorrectAmount() {
        //given
        RevenueRecognition revenueRecognition1 = new RevenueRecognition(new Money(10), Date.newInstance(2010, 01, 01));
        RevenueRecognition revenueRecognition2 = new RevenueRecognition(new Money(15), Date.newInstance(2010, 02, 01));
        RevenueRecognition revenueRecognition3 = new RevenueRecognition(new Money(10), Date.today());
        //when
        Contract contract = new Contract(new List<RevenueRecognition>{revenueRecognition1, revenueRecognition2, revenueRecognition3});
        Money totalRecognizedRevenue = contract.recognizedRevenue(Date.newInstance(2015,01,01));
        //then
        System.assert(totalRecognizedRevenue.amount == 25, 'It should calculate the correct amount');
    }
}