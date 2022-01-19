trigger casePriorityTrigger on Case (before insert, before update, before delete, after update, after insert, after delete, after undelete) {
    //handle everycase 
    switch on trigger.operationType {
        when BEFORE_INSERT{

        }

        when BEFORE_UPDATE { // Fires on Upsert and Merge
            
        }
        when BEFORE_DELETE { // Fires on Merge
            // Must use trigger.old here
        }
        when AFTER_INSERT { // Fires on Upsert
            CaseHandler.CreateTask(trigger.new);
        }
        when AFTER_UPDATE { // Fires on Upsert and Merge
            // Can use trigger.old here
        }
        when AFTER_DELETE { // Fires on Merge
            // Can use trigger.old here
        }
        when AFTER_UNDELETE {
            
        }
        
    }

}