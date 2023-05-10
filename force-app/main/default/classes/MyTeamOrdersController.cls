public without sharing class MyTeamOrdersController {
    public decimal SumOders{
        get{
			AggregateResult groupedResults = [SELECT SUM(TotalAmount) total FROM Order];
			return (decimal)groupedResults.get('total');

        }
        set;
    }
}