trigger PrintMediaTrigger on PrintMedia__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    switch on trigger.operationType {
        when BEFORE_INSERT {}
        when BEFORE_UPDATE {}
        when BEFORE_DELETE {}
        when AFTER_INSERT {
            PrintMediaHelper.calculateCosts(trigger.new);
        }
        when AFTER_UPDATE {
            PrintMediaHelper.calculateCosts(trigger.new);
        }
        when AFTER_DELETE {}
        when AFTER_UNDELETE {}
    }
}