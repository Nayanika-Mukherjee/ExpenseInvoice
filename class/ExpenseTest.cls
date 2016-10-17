@isTest

public class ExpenseTest {
	public testMethod static void myTest(){
      
        Expense__c expense = new Expense__c();
        expense.TotalAmount__c=1000;
        expense.Event__c='party';
        insert expense;
        Member__c member = new Member__c();
        member.FirstName__c='abc';
        member.LastName__c='xyz';
        member.Email__c='abc@abc.com';
        insert member;
        ExpenseMember__c expmem = new ExpenseMember__c();
        expmem.Member__c=member.Id;
        expmem.Expense__c=expense.Id;
        expmem.ContributionAmount__c=100;
        insert expmem;
        ExpenseEXT expExt = new ExpenseEXT(new ApexPages.StandardController(expense));
        
        List<ExpenseMember__c> ge = new List<ExpenseMember__c>();
        ge = expExt.getExpMembers();
        //Expense__c expense1 = new Expense__c();
        //expense1 
        //List<ExpenseMember__c> ge1 = new List<ExpenseMember__c>();
        //ge1.add(expense);
        //System.assertEquals(ge1,ge);
}
}