using demo_signalR_1.Entities;
using Microsoft.AspNetCore.SignalR;

namespace demo_signalR_1.Hubs
{
	public class DashboardHub : Hub
	{
		public override Task OnConnectedAsync()
		{
			Console.WriteLine($"{Context.ConnectionId} has joined to Hub");
			return base.OnConnectedAsync();
		}

		public override Task OnDisconnectedAsync(Exception? exception)
		{
			Console.WriteLine($"{Context.ConnectionId} has left the Hub");
			return base.OnDisconnectedAsync(exception);
		}
	}
}
