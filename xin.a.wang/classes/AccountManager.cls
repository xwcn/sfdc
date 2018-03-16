@RestResource(urlMapping='/Accounts/*/contacts')
global class AccountManager {
	@HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String accountId = request.requestURI.substringBetween('Accounts/', '/contacts');
        system.debug(accountId);
        
        Account result =  [SELECT Id, Name, (SELECT id, Name from Contacts)
                        FROM Account
                        WHERE Id = :accountId];
        return result;
    }
}