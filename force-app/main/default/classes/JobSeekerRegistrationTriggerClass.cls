public class JobSeekerRegistrationTriggerClass {
	public static void onBeforeInsert(List<JobSeekerRegistration__c> lstNew){
    	String random = String.valueOf(math.rint(math.random() * (999999-1))).replace('.0','');
    	String randomStr = random.leftPad(6, '0');
        for (JobSeekerRegistration__c jsr : lstNew){
            if (jsr.RegistrationCode__c == null) {
                Datetime Createddate = datetime.now();
                String today = String.valueOf(Createddate);
                String Daytoday = today.substring(8,10);
                String Monthtoday = today.substring(5,7);
                String Yeartoday =  today.substring(2,4);
                String fullname = jsr.FullName__c;
                String[] fullnames = fullname.split(' ',2);
                String firstname = fullnames[0].substring(0,1);
                String lastname = fullnames[1].substring(0,1);
                jsr.RegistrationCode__c = randomStr + firstname + lastname + Daytoday + Monthtoday;
            }
        }
    }
    public static void onBeforeUpdate(List<JobSeekerRegistration__c> lstNew, Map<ID,JobSeekerRegistration__c> oldMap){
    	String random = String.valueOf(math.rint(math.random() * (999999-1))).replace('.0','');
    	String randomStr = random.leftPad(6, '0');
        for (JobSeekerRegistration__c jsr : lstNew){
            if (jsr.RegistrationCode__c == null) {
                Datetime Createddate = jsr.CreatedDate;
                String today = String.valueOf(Createddate);
                String Daytoday = today.substring(8,10);
                String Monthtoday = today.substring(5,7);
                String Yeartoday =  today.substring(2,4);
                String fullname = jsr.FullName__c;
                String[] fullnames = fullname.split(' ',2);
                String firstname = fullnames[0].substring(0,1);
                String lastname = fullnames[1].substring(0,1);
                jsr.RegistrationCode__c = randomStr + firstname + lastname + Daytoday + Monthtoday;
            }
        }
    }
}