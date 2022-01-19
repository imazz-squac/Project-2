public class CaseHandler {

    private static void CreateTask(List<Case> modifiedCases) {

        List<Task> taskListToInsert = new List<Task>();
        //Setup trigger so that it works for multiple records 

        for (Case c : modifiedCases) {
            if (c.Priority == 'High') {
                
                Task t = new Task();
                t.Subject = 'High Priority Follow-up Task';
                t.WhatId = c.Id;
                taskListToInsert.add(t);
            }
            
        }

        if (taskListToInsert.size() > 0 ) {
            insert taskListToInsert;
        }

    }
}