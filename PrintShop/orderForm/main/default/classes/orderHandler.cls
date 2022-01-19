

public class orderHandler {
    public orderHandler(){

    }

    public static void createNewPrintMedia(List<Order> listOfOrders){

        List<SObject> printMediaList = new List<SObject>();

        for(Order currOrd : listOfOrders){

            PrintMedia__c printM1 = new PrintMedia__c();

            printM1.Color__c=true;

             printMediaList.add(printM1);

        }
        
        insert printMediaList;

    }
}
