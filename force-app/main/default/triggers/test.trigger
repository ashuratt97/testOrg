trigger UserRegistrationTrigger on UserRegistration__c (before insert, before update) {
	if (Trigger.isBefore) {
        if (Trigger.isInsert){
            //UserRegistrationTriggerClass.onBeforeInsert(Trigger.New);
            UserRegistrationTriggerClass.onBeforeInsert(Trigger.New,Trigger.oldMap);
        }
        if (Trigger.isUpdate){
            UserRegistrationTriggerClass.onBeforeUpdate(Trigger.new, Trigger.oldMap);
        }
    }
}
