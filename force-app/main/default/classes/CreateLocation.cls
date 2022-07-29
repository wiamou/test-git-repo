public with sharing class CreateLocation {


    private final Client__c cli;
    public CreateLocation(ApexPages.StandardController stdController) {
        this.cli = (Client__c)stdController.getRecord();
    }

        public String currentRecordId ;
        public Client__c client;
        public Client__c categoriePreferee;
 
        public void NewLocation() {

        currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
        client = [select id from Client__c where id =: currentRecordId ];

        categoriePreferee = [select Categorie_Preferee__c from Client__c where id =: currentRecordId ];
        Produit__c produit = [select id from Produit__c where Categorie__c =: categoriePreferee.Categorie_Preferee__c limit 1];
                                                            
        Contrat__c contrat = new Contrat__c(Name= 'Contrat Location', DateDepart__c= system.today(), DateRetour__c=system.today()+7, Client__c= client.id);
        insert contrat; 

        Ligne_de_contrats__c ldc = new Ligne_de_contrats__c(Name= 'Ligne de Contrat Location', Produit__c = produit.id, Contrat__c = contrat.id);
        insert ldc;
     }
}                                                                        
