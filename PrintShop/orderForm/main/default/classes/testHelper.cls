public with sharing class testHelper {
    public testHelper() {

    }

    public static List<SObject> createAccounts(Integer numAccounts) {
        List<Account> toInsert = new List<Account>();
        
        for(Integer num = 0; num < numAccounts; num++) {
            toInsert.add(new Account(name='Test Account'));
        }

      return toInsert;

}
}
