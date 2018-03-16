public class AccountHandler {
    public static Account insertNewAccount(String accname){
        Account acc = new Account(Name=accname);
        try{
            insert acc;
			return null;
        }
        catch(exception e){
            System.debug('An exception has occurred: ' + e.getMessage());
            return null;
        }
        return acc;
    }
}