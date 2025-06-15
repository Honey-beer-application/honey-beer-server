using honey_beer_server_app;
using honey_beer_server_app.Models;
using System.Net.Http.Json;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class LocationControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public LocationControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }
    //[TestMethod]
    [Fact]
    public async Task LoadAllLocationsAPITests()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Location"));
        List<Location>? result = await response.Content.ReadFromJsonAsync<List<Location>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }
}
