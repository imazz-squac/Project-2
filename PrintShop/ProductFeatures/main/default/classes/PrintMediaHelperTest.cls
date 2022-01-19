@isTest
public class PrintMediaHelperTest {
    
    @isTest
    public static void TP_calculateCosts(){

        PrintMedia__c testMedia = new PrintMedia__c(
            PageSize__c = 'A0',
            PageMaterial__c = '80# Silk'
        );

        Test.startTest();

        Insert testMedia;
        PrintMedia__c insertedMedia = [SELECT Customization_Costs__c FROM PrintMedia__c LIMIT 1];

        Decimal testCost = insertedMedia.Customization_Costs__c;

        System.assertNotEquals(0, testCost);

        Test.stopTest();
    }

    @isTest
    public static void TB_calculateCosts(){

        List<PrintMedia__c> media = new List<PrintMedia__c>();
        
        for(Integer i=0; i<150; i++){
            PrintMedia__c testMedia = new PrintMedia__c(
                PageSize__c = 'A0',
                PageMaterial__c = '80# Silk'
            );
            media.add(testMedia);
        }

        Test.startTest();

        Insert media;

        for(PrintMedia__c test: [SELECT Customization_Costs__c FROM PrintMedia__c]){
            System.assertNotEquals(0, test.Customization_Costs__c);
        }

        Test.stopTest();

    }
}
