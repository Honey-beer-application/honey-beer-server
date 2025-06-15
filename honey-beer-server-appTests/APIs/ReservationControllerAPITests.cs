using honey_beer_server_app;
using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.Extensions.DependencyInjection;
using System.Net.Http.Json;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class ReservationControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public ReservationControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }



    //[TestMethod]
    [Fact]
    public async Task LoadAllReservationsAPITest()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Reservation/getAllReservations"));
        response.EnsureSuccessStatusCode();
        List<Reservation>? result =await response.Content.ReadFromJsonAsync<List<Reservation>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }

    //[TestMethod]
    [Fact]
    public async Task SelectReservationsAPITest()
    {
        IServiceScope scope = application.Services.CreateScope();
        DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();

        Company company = new()
        {
            Email = "company6@gmail.com",
            Name = "company6",
            Password = "company6",
            PIB = 10000014
        };
        await context.Company.AddAsync(company);

        Product product = new Product()
        {
            Name = "Brand new product",
            Description = "Brand new descirption",
        };
        await context.Product.AddAsync(product);
        await context.SaveChangesAsync();

        HttpClient client = application.CreateClient();
        Reservation reservation = new()
        {
            Amount = 300,
            CompanyInstance = company,
            Delivery = DateTime.Now,
            PIB = company.PIB,
            ProductId = product.ProductId,
            ProductInstance = product
        };
        HttpResponseMessage response = (await client.PostAsJsonAsync<Reservation>("/api/Reservation/selectReservations", reservation));
        response.EnsureSuccessStatusCode();
        List<Reservation>? result = await response.Content.ReadFromJsonAsync<List<Reservation>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }

    //[TestMethod]
    [Fact]
    public async Task SaveReservation()
    {
        IServiceScope scope = application.Services.CreateScope();
        DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();

        Company company = new()
        {
            Email = "company7@gmail.com",
            Name = "company7",
            Password = "company7",
            PIB = 10000031
        };
        await context.Company.AddAsync(company);

        Product product = new Product()
        {
            
            Name = "Brand product",
            Description = "Brand descirption",
        };
        await context.Product.AddAsync(product);
        await context.SaveChangesAsync();

        HttpClient client = application.CreateClient();
        Reservation reservation = new()
        {
            Amount = 400,
            CompanyInstance = company,
            Delivery = DateTime.Now.AddDays(5),
            PIB = company.PIB,
            ProductId = product.ProductId,
            ProductInstance = product
        };
        HttpResponseMessage response = (await client.PostAsJsonAsync<Reservation>("/api/Reservation/saveReservation", reservation));
        response.EnsureSuccessStatusCode();
        bool result = await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }
}
