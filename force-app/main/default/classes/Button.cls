public with sharing class Button {
    private final Client__c acct;
    public Button(ApexPages.StandardController stdController) {
        this.acct = (Client__c)stdController.getRecord();
    }

    /* Flow.Interview flow = Flow.Interview.Apex_Action_Flow();
    flow.start(); */

    /public void CreateContrat() {
        Contrat__c contrat = new Contrat__c(Name= 'Contrat', DateDepart__c= system.today(), DateRetour__c=system.today()+7, Client__c= this.acct.id);
        insert contrat; 
        // System.debug('contrat name : ' + contrat.Name +' ,Contrat debut : '+contrat.DateDepart__c + ' ,contrat fin : '+contrat.DateRetour__c);
     } 

}
