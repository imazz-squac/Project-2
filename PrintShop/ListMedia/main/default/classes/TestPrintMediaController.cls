@isTest 
public class TestMediaController {
    @TestSetup
    public static void SetupControllerTests(){
        List<PrintMedia__c> printMediaToInsert = new List<PrintMedia__c>();
        for(Integer i = 0; i <5; i++ ) {
            printMediaToInsert.add(new PrintMedia__c(BindingStyle__c = 'Perfect'));
        }

        insert printMediaToInsert;
    }

    @isTest
    public static void TestCreatePrintMediaWithOneRecord(){
        PrintMedia__c print = [SELECT Id FROM PrintMedia__c WHERE BindingStyle__c ='Perfect' LIMIT 1];

        Test.startTest();
        List<PrintMedia__c> print1 = New List<PrintMedia__c>();
        for (PrintMedia__c p : [SELECT Id FROM PrintMedia__c WHERE BindingStyle__c='Perfect']) {
            print1.add(p.Id);
        }

        System.assertEquals(print1.size() = 1 , print1.size());

        Test.stopTest();
    }
}