trigger CreateLdc on Ligne_de_contrats__c (after insert) {
   /* List<Produit__c> produits = new List<Produit__c>();
    List<Ligne_de_contrats__c> lcs = new List<Ligne_de_contrats__c>();
    Produit__c produit = [select id from Produit__c where Name = 'Assuance Tout Risque' ];

    for(Ligne_de_contrats__c ldc : Trigger.new){
        if(ldc.Type_Produit__c == 'Voiture' && ( (system.today()).monthsBetween(ldc.Date_Permis__c)<5 || ldc.Categorie__c == 'Cat C') ){

            Ligne_de_contrats__c lc = new Ligne_de_contrats__c(Name= 'Ligne De Contrat Assurance', Contrat__c = ldc.contrat__c, Produit__c = produit.id);
            lcs.add(lc);
         }
    }

    insert lcs; */

}