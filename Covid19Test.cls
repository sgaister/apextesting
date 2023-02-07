//this is an example of Covid19 apex class testing with 100% code coverage

@isTest
public class Covid19Test {

    @isTest
    public static void treatPatientTest(){
        // create the the instance of the class
        Covid19 London = new Covid19(10);

        Integer treated = London.getTreated();
        // check if the count is 10 or not
        System.assertEquals(10, treated, 'Treated count does not match');

        // create the the instance of the class
        Covid19 pat = new Covid19(112);

        treated = pat.getTreated();
        // check if the count is 112 or not
        System.assertEquals(112, treated, 'Treated count does not match');

        // check the count of recoveredInCountry, it should be 122
        System.assertEquals(122, Covid19.recoveredInCountry, 'Treated count does not match');

        London.treatPatient();
        treated = London.getTreated();
        System.assert(treated == 11, 'Treated count does not match');
        System.assert(Covid19.recoveredInCountry == 123, 'Treated count does not match');

    }

    @isTest
    public static void treatPatientTestNegative(){
        // create the the instance of the class
        Covid19 London = new Covid19(-10);

        Integer treated = London.getTreated();
        // check if the count is 0 or not
        System.assertEquals(0, treated, 'Treated count does not match');

    }
}