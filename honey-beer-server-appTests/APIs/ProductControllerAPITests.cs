using honey_beer_server_app;
using honey_beer_server_app.Models;
using System.Net.Http.Json;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class ProductControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public ProductControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task GetAllProductsAPITest()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Product"));
        response.EnsureSuccessStatusCode();
        List<Product>? result =await response.Content.ReadFromJsonAsync<List<Product>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }
}
