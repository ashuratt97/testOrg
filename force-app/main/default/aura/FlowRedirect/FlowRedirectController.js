({
	createRecord : function(component, event, helper) {
        var createRecordEvent  = $A.get("e.force:force:createRecord");
		createRecordEvent.setParams({
		  "entityApiName": "closcm_hrm__RecruitmentCRM__c",
            "defaultFieldValues": {
                'Name' : 'Job Application'
            }
		});
		createRecordEvent.fire(); 
		
	}
})