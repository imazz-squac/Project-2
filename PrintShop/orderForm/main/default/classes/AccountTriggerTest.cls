@isTest

public class AccountTriggerTest {
   @isTest
    public static void Pos_Trigger1_Task() {

        Test.startTest();

        List<SObject> toInsert = testHelper.createAccounts(1);

        insert toInsert;
    
        String sub = 'Test Account';
        List<Task> currTask = [SELECT subject FROM task WHERE subject=:sub];


        System.assertEquals(0, currTask.size());

        Test.stopTest();
    }

}
