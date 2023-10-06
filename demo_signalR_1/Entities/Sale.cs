namespace demo_signalR_1.Entities
{
	public class Sale
	{
		public int Id { get; set; }
		public string Customer {  get; set; }
		public decimal Amount { get; set; }
		public DateTime PurchasedOn { get; set; }
	}
}
