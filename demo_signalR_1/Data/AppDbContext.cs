using demo_signalR_1.Entities;
using Microsoft.EntityFrameworkCore;

namespace demo_signalR_1.Data
{
	public class AppDbContext: DbContext
	{
		readonly string _connectionString = "Data Source=DESKTOP-8PSQBN9\\HOANGLAM;Initial Catalog=demo_signalR_1;Integrated Security=True;TrustServerCertificate=True";

		public DbSet<Product> Product { get; set; }
		public DbSet<Sale> Sale { get; set; }

		protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		{
			optionsBuilder.UseSqlServer(_connectionString);
		}
	}
}
