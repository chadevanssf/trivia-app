public with sharing class TriviaController {
    
    @AuraEnabled
    public static List<Trivia_Category__c> getQuestions(String triviaId) {
        List<Trivia_Category__c> results = [SELECT Id,Name,Title__c,Trivia__c,
                                            (
                                                SELECT Display_Value__c,Id,Name,Order__c,Question_Text__c,Answer_Text__c
                                                FROM Trivia_Questions__r
                                                ORDER BY Order__c ASC NULLS FIRST
                                            )
                                            FROM Trivia_Category__c
                                            WHERE Trivia__c = :triviaId
                                            ORDER BY Order__c];
        return results;
    }
}