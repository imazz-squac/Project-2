@isTest
public class CaseHandlerTest {

    @TestSetup
    public static void SetupTests(){
        //Create Test Data 
        List<Case> testCases = new List<Case>();
        for(Integer i=0; i <10; i++) {
            testCases.add(new Case(Subject = 'TestCase' + i,
            Priority = 'High')); 
        }
        insert testCases;
    }

    @isTest 
    public static void TestCreateTaskWithOneCase() {
        //Get the first test account by using a SOQL query 
        Case c = [SELECT Id FROM Case Where Subject = 'TestCase0' LIMIT 1];
        
        //Start the Test
        Test.startTest();
        List<Case> cas = New List<Case>();
        for(Case c: [SELECT Id FROM Case WHERE Id IN (SELECT WhatId FROM Task )]){
            cas.add(c.Id);
        }

        System.assertEquals(cas.size() = 1, cas.size());

        Test.stopTest();
    }
    
}
