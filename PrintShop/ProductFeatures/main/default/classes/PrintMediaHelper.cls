public with sharing class PrintMediaHelper {
    
    public static void calculateCosts(List<PrintMedia__c> media){

        for(PrintMedia__c pm : media){
            calculateCostPerCopy(pm);
        }

        update media;
    }

    private static void calculateCostPerCopy(PrintMedia__c media){
        // Cost for page size, per page
        // cost for page material, per page
        // cost for color print per page
        // Cost for cover material
        // Cost for cover jacket
        // Cost for binding stlye
        Decimal totalCost = 0;

        totalCost += MaterialCosts.PAGE_COST;

        totalCost += getPageTypeCost(media);

        if(media.Color__c) totalCost += MaterialCosts.COLOR_PAGE_COST;

        if(media.Cover_Jacket__c) totalCost += MaterialCosts.COVER_JACKET_COST;

        media.Customization_Costs__c = totalCost;
    }

    private static Decimal getPageTypeCost(PrintMedia__c media){
        String pageType = media.PageMaterial__c;

        if(pageType.contains('Bond')) return 0;
        if(pageType.contains('Offset')) return MaterialCosts.OFFSET_COST;
        if(pageType.contains('Gloss')) return MaterialCosts.GLOSS_COST;
        if(pageType.contains('Silk')) return MaterialCosts.SILK_COST;

        return 0;
    }
}
