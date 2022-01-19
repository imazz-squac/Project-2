public with sharing class ProductController {
    
    @AuraEnabled
    public static List<Product2> getProducts(){
        try {
            return [SELECT Name, Description FROM Product2];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
