@isTest
public class UserRegistrationTriggerClassTest {
    public static testMethod void checkInsertTest() {
        Test.startTest();
        UserRegistration__c user = new UserRegistration__c();
        user.FullName__c = 'Quan Test';
       	insert user;
        user.FullName__c = 'Quan Do';
        update user;
        List<UserRegistration__c> userTest = [SELECT Id FROM UserRegistration__c];
        System.assertEquals(userTest.size(), 1);
        Test.stopTest();
    }
}