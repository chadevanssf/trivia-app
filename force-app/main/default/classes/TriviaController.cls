public with sharing class TriviaController {
    
    @AuraEnabled
    public static List<Trivia_Question__c> getQuestions(String triviaId) {
        List<Trivia_Question__c> results = [SELECT Id, Name, Display_Value__c, Question_Text__c
                                            FROM Trivia_Question__c
                                            WHERE Trivia__c = :triviaId
                                            ORDER BY Order__c];
        return results;
    }
}