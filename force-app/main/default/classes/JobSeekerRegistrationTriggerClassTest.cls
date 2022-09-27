@isTest
public class JobSeekerRegistrationTriggerClassTest {
    public static testMethod void checkInsertTest() {
        Test.startTest();
        JobSeekerRegistration__c jsr = new JobSeekerRegistration__c();
        jsr.FullName__c = 'Quan Test';
       	insert jsr;
        jsr.FullName__c = 'Quan Do';
        jsr.RegistrationCode__c = null;
        update jsr;
        List<JobSeekerRegistration__c> jsrTest = [SELECT Id FROM JobSeekerRegistration__c];
        System.assertEquals(jsrTest.size(), 1);
        Test.stopTest();
    }
}