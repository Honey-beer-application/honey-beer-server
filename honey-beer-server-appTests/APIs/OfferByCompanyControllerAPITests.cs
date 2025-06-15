using honey_beer_server_app;
using honey_beer_server_app.Models;
using System.Net.Http.Json;
using Microsoft.Extensions.DependencyInjection;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class OfferByCompanyControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public OfferByCompanyControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task LoadAllOffersByCompanyAPITest()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/OfferByCompany/get"));
        response.EnsureSuccessStatusCode();
        List<OfferByCompany>? result = await response.Content.ReadFromJsonAsync<List<OfferByCompany>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }

    //[TestMethod]
    [Fact]
    public async Task SaveOfferByCompanyAPITest()
    {

        HttpClient client = application.CreateClient();
        var scope = application.Services.CreateScope();
        DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();
        Company company = new Company()
        {
            PIB = 10000021,
            Name = "Company21",
            Email = "company21@gmail.com",
            Password = "company21",
        };
        await context.Company.AddAsync(company);
        await context.SaveChangesAsync();

        Product product = new Product()
        {
            Description = "Product description",
            Name = "Nice product"
        };

        await context.Product.AddAsync(product);
        await context.SaveChangesAsync();

        Offer offer = new()
        {
            OfferId = 0,
            Amount = 10,
            BeginDate = DateTime.Now.AddDays(-2),
            EndDate = DateTime.Now.AddDays(+3),
            ProductId = product.ProductId

        };
        
        OfferByCompany example = new()
        {
            PIB = company.PIB,
            OfferId = offer.OfferId,
            OfferInstance = offer,
            ProductId = product.ProductId
        };
        HttpResponseMessage response = (await client.PostAsJsonAsync<OfferByCompany>("/api/OfferByCompany/save", example));
        response.EnsureSuccessStatusCode();
        bool? result =await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }

    //[TestMethod]
    [Fact]
    public async Task UpdateOfferByCompanyAPITest()
    {
        HttpClient client = application.CreateClient();
        var scope = application.Services.CreateScope();
        DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();
        Company company = new Company()
        {
            PIB = 10000012,
            Name = "Company12",
            Email = "company12@gmail.com",
            Password = "company12",
        };
        await context.Company.AddAsync(company);
        await context.SaveChangesAsync();

        Product product = new Product()
        {
            Description = "Product description",
            Name = "Nice product"
        };

        await context.Product.AddAsync(product);
        await context.SaveChangesAsync();

        Offer offer = new()
        {
            Amount = 10,
            BeginDate = DateTime.Now.AddDays(-2),
            EndDate = DateTime.Now.AddDays(+3),
            ProductId = product.ProductId

        };

        await context.Offer.AddAsync(offer);
        await context.SaveChangesAsync();

        OfferByCompany example = new()
        {
            PIB = company.PIB,
            OfferId = offer.OfferId,
            OfferInstance = offer,
            ProductId = product.ProductId
        };

        await context.OfferByCompany.AddAsync(example);
        await context.SaveChangesAsync();

        example.OfferInstance.Amount = 100;

        HttpResponseMessage response = (await client.PostAsJsonAsync<OfferByCompany>("/api/OfferByCompany/update", example));
        response.EnsureSuccessStatusCode();
        bool? result =await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }
}
