//controller for Expense member
public with sharing class ExpenseEXT {
    public Expense__c expObj{get;set;}  //get,set reference a variable in the controller
    
    //constructer for class
    public ExpenseEXT(ApexPages.StandardController controller) {
        expObj = (Expense__c)controller.getRecord();
    }
    
    public List<ExpenseMember__c> getExpMembers(){
    //list creation of the object of type Expense member
        return [Select Name,ContributionAmount__c,Member__r.FirstName__c,Member__r.LastName__c from ExpenseMember__c where Expense__c =: expObj.Id];
    }
}