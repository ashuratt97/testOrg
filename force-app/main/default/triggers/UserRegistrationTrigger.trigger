trigger UserRegistrationTrigger on UserRegistration__c (before insert, before update) {
	if (Trigger.isBefore) {
        if (Trigger.isInsert){
            UserRegistrationTriggerClass.onBeforeInsert(Trigger.New);
        }
        if (Trigger.isUpdate){
            UserRegistrationTriggerClass.onBeforeUpdate(Trigger.new, Trigger.oldMap);
        }
    }
}