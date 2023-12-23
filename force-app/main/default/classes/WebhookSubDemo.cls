@RestResource(urlMapping='/api/Webhooks/pushDetailsdemo/*')
global with sharing class WebhookSubDemo {
    @HttpPost
    global static void handleNotification() {
        try {
            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
            response.statusCode = 200;
            response.responseBody = Blob.valueOf('{"Success"}');
        } catch (Exception e) {
            System.debug('Exception Happened' + e.getMessage());
        }
    }
}