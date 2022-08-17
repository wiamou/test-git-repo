trigger CreateP on Produit__c (after insert) {
    List<Produit__c> p = new List<Produit__c>();
    for(Produit__c pr : Trigger.new){
        if(pr.Name == 'Voiture'){
            p.add(pr);
         }
    }

    for(Produit__c pro : p){
        System.debug('The name of the product is : '+ pro.Name);
    }
    // update p;
    //commentaire
    //HELLO WORLD
    //HELLO WORLD
    //HELLO WORLD
    //HELLO WORLD
    //HELLO WORLD
    

}