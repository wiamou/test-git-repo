trigger LigneContrat on Ligne_de_contrats__c (before insert) {
    /* private final Ligne_de_contrats__c ldc;
    
    for(Ligne_de_contrats__c ldc : Trigger.new){
    if(ldc.Type_Produit__c == 'Assurance' && (system.today()).monthsBetween(ldc.Date_Permis__c)<5 && ldc.Niveau_Assurance__c != 'Tout Risque'){
      ldc.addError('Assurance Tous risque obligatoire');
    }
}*/ 
}