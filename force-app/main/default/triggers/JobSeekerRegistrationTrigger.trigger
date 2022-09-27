trigger JobSeekerRegistrationTrigger on JobSeekerRegistration__c (before insert, before update) {
	if (Trigger.isBefore) {
        if (Trigger.isInsert){
            JobSeekerRegistrationTriggerClass.onBeforeInsert(Trigger.New);
        }
        if (Trigger.isUpdate){
            JobSeekerRegistrationTriggerClass.onBeforeUpdate(Trigger.new, Trigger.oldMap);
        }
    }
}