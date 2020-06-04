trigger OpportunityJourneyTrigger on Opportunity (before insert) {


    List<Opportunity> insertedOpps = Trigger.New; 
    for(Opportunity opp: insertedOpps){ 
        ScheduleJourney.setJourneyFields(opp, Datetime.now()); 
    }
}