using honey_beer_server_app;
using honey_beer_server_app.Models;
using System.Net.Http.Json;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class DiscountControllerAPITests 
{
    private readonly ProjectFactory application;

    public DiscountControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }



    //[TestMethod]
    [Fact]
    public async Task LoadAllDiscountsTestsAPI()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Discount"));
        response.EnsureSuccessStatusCode();
        List<Discount>? result = await response.Content.ReadFromJsonAsync<List<Discount>>();
        //Assert.IsInstanceOfType<List<Discount>>(result);
        Assert.IsType<List<Discount>>(result);
    }
}
