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
public class OfferControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public OfferControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task CreateOfferAPITest()
    {
        IServiceScope scope = application.Services.CreateScope();
        DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();
        Product product = new Product()
        {
            Description = "Sweet product description",
            Name = "Sweet product name",
            LocationsForProduct = null,
            Discounts = null,
            Reservations = null
        };
        await context.Product.AddAsync(product);
        await context.SaveChangesAsync();
        HttpClient client = application.CreateClient();
        Offer offer = new()
        {
            Amount = 350,
            BeginDate = DateTime.Now.AddDays(-5),
            EndDate = DateTime.Now.AddDays(+5),
            ProductId = product.ProductId,
            ProductInstance = product
        };
        Company company = new Company()
        {
            PIB = 10000017,
            Name = "company9",
            Email = "company9@gmail.com",
            Password = "copany9"
        };
        await context.Company.AddAsync(company);
        await context.SaveChangesAsync();

        OfferByCompany example = new OfferByCompany()
        {
            CompanyInstance = company,
            OfferInstance = offer,
            PIB = company.PIB,
            ProductId = product.ProductId,
        };
        HttpResponseMessage response = (await client.PostAsJsonAsync<OfferByCompany>("/api/Offer", example));
        response.EnsureSuccessStatusCode();
        bool? result = await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }
}
