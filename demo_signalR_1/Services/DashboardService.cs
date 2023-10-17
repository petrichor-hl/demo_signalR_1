using demo_signalR_1.Data;
using demo_signalR_1.Entities;
using demo_signalR_1.Hubs;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using TableDependency.SqlClient;
using TableDependency.SqlClient.Base.EventArgs;

namespace demo_signalR_1.Services
{
	public class DashboardService
	{
		readonly AppDbContext _dbContext = new();
		private readonly SqlTableDependency<Product> _productTableListener;
		private readonly SqlTableDependency<Sale> _saleTableListener;

		readonly string _connectionString = "Data Source=DESKTOP-8PSQBN9\\HOANGLAM;Initial Catalog=demo_signalR_1;Integrated Security=True;TrustServerCertificate=True";
		private readonly IHubContext<DashboardHub> _context;

		public DashboardService(IHubContext<DashboardHub> context)
        {
			_context = context;

			_productTableListener = new SqlTableDependency<Product>(_connectionString, "Product");
			_productTableListener.OnChanged += ProductChanged;
			_productTableListener.Start();

			_saleTableListener = new SqlTableDependency<Sale>(_connectionString, "Sale");
			_saleTableListener.OnChanged += SaleChanged;
			_saleTableListener.Start();
		}

		private async void ProductChanged(object sender, RecordChangedEventArgs<Product> e)
		{
			List<Product> products = await GetProducts();
			await _context.Clients.All.SendAsync("RefreshProducts", products);
		}

		private async void SaleChanged(object sender, RecordChangedEventArgs<Sale> e)
		{
			List<Sale> sales = await GetSales();
			await _context.Clients.All.SendAsync("RefreshSales", sales);
		}

		public async Task<List<Product>> GetProducts()
		{
			return await _dbContext.Product.AsNoTracking().ToListAsync();
		}

		public async Task<List<Sale>> GetSales()
		{
			return await _dbContext.Sale.OrderBy(s => s.PurchasedOn).AsNoTracking().ToListAsync() ;
		}
	}
}
