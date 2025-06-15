using honey_beer_server_app;
using honey_beer_server_app.Models;
using System.Net.Http.Json;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class ShoppingLocationControllerAPITests
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public ShoppingLocationControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }


    //[TestMethod]
    [Fact]
    public async Task LoadAllShoppingLocationsAPITests()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/ShoppingLocation"));
        response.EnsureSuccessStatusCode();
        List<ShoppingLocation>? result = await response.Content.ReadFromJsonAsync<List<ShoppingLocation>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }
}
