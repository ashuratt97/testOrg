public class PageController {
    public String language {get; private set;}
    
    public PageController() {
    	language = (String) ApexPages.currentPage().getParameters().get('lang');    
        if (language == null || language.length() == 0) {
            language = 'en';
        }
    }
}