public with sharing class PrintMediaController {
    @AuraEnabled
    public static List<PrintMedia__c> getPrintMedias(){
        List<PrintMedia__c> printmedias = [SELECT Id, BindingStyle__c, Color__c, Cover_Jacket__c, Name, PageMaterial__c, PageSize__c,RecordTypeId 
        FROM PrintMedia__c];

        //Add a possible isAccessible check 
        return printmedias;
        
    }
    
}
