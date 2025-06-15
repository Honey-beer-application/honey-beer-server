using honey_beer_server_app;
using honey_beer_server_app.Models;
using System.Net.Http.Json;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class PromotionControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public PromotionControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task LoadAllPromotionsAPITest()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Promotion"));
        response.EnsureSuccessStatusCode();
        List<Event>? result = await response.Content.ReadFromJsonAsync<List<Event>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }

    //[TestMethod]
    [Fact]
    public async Task LoadAllPromotionLocationsAPITest()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Promotion/locations"));
        response.EnsureSuccessStatusCode();
        List<EventLocation>? result = await response.Content.ReadFromJsonAsync<List<EventLocation>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }
}
