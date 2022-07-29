public with sharing class RequestAPI {
    @AuraEnabled(cacheable=true) public static String requestAPI() {
        Http http = New Http();
        HttpRequest request = New HttpRequest();
        String endpoint = 'https://fakestoreapi.com/users';
        
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        request.setHeader('Content-Type','application/json');
         
        HttpResponse response = http.send(request);
        String text = response.getBody();
        System.debug('Status Code : '+ response.getStatusCode());
        System.debug('Response BODY: '+ response.getBody());
        return text;
    }
}
