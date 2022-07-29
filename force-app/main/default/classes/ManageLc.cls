@RestResource(urlMapping='/createLcontract/*')
global with sharing class ManageLc {
    @HttpGet
    global static Ligne_de_contrats__c getLcById() {
        RestRequest request = RestContext.request;

        String LcId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        Ligne_de_contrats__c result =  [SELECT id,Name,Contrat__c,Produit__c
                        FROM Ligne_de_contrats__c
                        WHERE Id = :LcId];
        return result;
    }
    @HttpPost
    global static ID createLdc(String name, ID contrat, ID produit) {

        Ligne_de_contrats__c ldc = new Ligne_de_contrats__c( Name = name, Contrat__c = contrat, Produit__c = produit);

        insert ldc;
        return ldc.Id;
    }   
        
}
