@isTest
private class PageControllerTest {
    testmethod static void shouldLoadPage() {
        PageReference pageRef = Page.HSolution;
        pageRef.getParameters().put('lang', 'vi');
        Test.setCurrentPage(pageRef);
        
        Test.startTest();
        PageController controller = new PageController();
        Test.stopTest();
        System.assertEquals('vi', controller.language);
    }
}