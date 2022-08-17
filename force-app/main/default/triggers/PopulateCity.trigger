trigger PopulateCity on Client__c (before insert) {
    List<User> user  = [select city from user where id=:userinfo.getuserid() limit 1];
    for(Client__c client : Trigger.new){
        client.Ville__c = user[0].City;
    }
}


