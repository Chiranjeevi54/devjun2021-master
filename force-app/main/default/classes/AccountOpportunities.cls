@RestResource(urlMapping='/AccountOpportunitiesRecords/*')
global with sharing class AccountOpportunities {
    @HttpGet
    global static List<Account> getOpportunities()
    {
        List<Account> Opps = [SELECT Name,OwnerId,(SELECT Name , Amount, CloseDate FROM Opportunities WHERE IsWon=True and CloseDate=TODAY) Oppor FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE IsWon=True and CloseDate=TODAY )];
        return Opps;
    }
}
