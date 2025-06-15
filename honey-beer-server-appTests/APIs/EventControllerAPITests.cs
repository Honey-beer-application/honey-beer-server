using honey_beer_server_app;
using honey_beer_server_app.Models;
using System.Net.Http.Json;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class EventControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public EventControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }



    //[TestMethod]
    [Fact]
    public async Task GetAllEventsAPITests()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Event"));
        List<Event>? result = await response.Content.ReadFromJsonAsync<List<Event>>();
        //Assert.IsInstanceOfType<List<Event>>(result);
        Assert.IsType<List<Event>>(result);
    }
}
