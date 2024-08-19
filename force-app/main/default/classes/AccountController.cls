public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
      system.debg("fetch getAllActiveAccounts");
      system.debg("Test fetch getAllActiveAccounts");
      return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
    }
  }