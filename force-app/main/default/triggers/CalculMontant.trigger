trigger CalculMontant on Order (before update) {
	
	Order newOrder= trigger.new[0];
	newOrder.NetAmount__c = newOrder.TotalAmount - newOrder.ShipmentCost__c;
}