using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Xunit;

namespace honey_beer_server_app;

public class ProjectFactory : WebApplicationFactory<Program>
    , IDisposable
    //, IAsyncLifetime
{

    //public readonly MsSqlContainer _msSqlContainer = new MsSqlBuilder()
    //          .WithImage("mcr.microsoft.com/mssql/server:2019-latest")
    //          .WithPassword("stvarnoNovo10")
    //          .WithHostname("localhost")
    //          //.WithPortBinding(7165, 7165)
    //          //.WithExposedPort(7165)
    //          .Build();

    //public async Task InitializeAsync()
    //{
    //    await _msSqlContainer.StartAsync();

    //    string _connectionString = _msSqlContainer.GetConnectionString();


    //    var options = new DbContextOptionsBuilder<DBContext>()
    //        .UseSqlServer(_connectionString)
    //        .Options;

    //    var context = new DBContext(options);

    //    await context.Database.MigrateAsync();

    //}

    //public new async Task DisposeAsync()
    //{
    //    await _msSqlContainer.StopAsync();
    //}

    //public new void Dispose()
    //{
    //    Services.CreateScope().ServiceProvider.GetRequiredService<DBContext>().Database.EnsureDeleted();
    //}
    public void Dispose()
    {
        Services.CreateScope().ServiceProvider.GetRequiredService<DBContext>().Database.EnsureDeleted();
    }

    protected override void ConfigureWebHost(IWebHostBuilder builder)
    {
        builder.ConfigureTestServices(services =>
        {
            services.Remove(services.Single(a => a.ServiceType == (typeof(DBContext))));
            services.AddDbContext<DBContext>(a => a.UseInMemoryDatabase("tests"));
            var dbContext = services.BuildServiceProvider().CreateScope().ServiceProvider.GetRequiredService<DBContext>();
            dbContext.Database.EnsureDeleted();
            dbContext.Database.EnsureCreated();

            //services.Remove(services.SingleOrDefault(service => typeof(DbContextOptions<DBContext>) == service.ServiceType));
            //services.Remove(services.SingleOrDefault(service => typeof(DbConnection) == service.ServiceType));
            //services.AddDbContext<DBContext>(options => options.UseSqlServer(_msSqlContainer.GetConnectionString()));

        });
    }
}

[CollectionDefinition("ProjectCollection")]
public class ProjectCollectionFixture : ICollectionFixture<ProjectFactory>
{

}
