public class accountHandler {
    public accountHandler() {

    }

    public static void createNewTask(List<Account> accountList){
        List<Task> taskList = new List<Task>();
        for(Account currAccount : accountList){
            Task tsk = new Task();
            tsk.WhatId = currAccount.ID;
            tsk.Subject = ('Schedule a call with ' + currAccount.Name);

            taskList.add(tsk);
            
        }

        insert taskList;
    }
}
