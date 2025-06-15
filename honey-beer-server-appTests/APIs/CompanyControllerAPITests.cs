using honey_beer_server_app;
using honey_beer_server_app.Models;
using Newtonsoft.Json;
using System.Net.Http.Json;
using System.Text;
using Xunit;
using Assert = Xunit.Assert;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class CompanyControllerAPITests
{
    private readonly ProjectFactory application;

    public CompanyControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task CreateCompanyTestAPI()
    {
        Company example = new ()
        {
            Name = "Company1",
            Email = "company1@gmail.com",
            Password = "company1",
            PIB = 10000001
        };
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.PostAsJsonAsync<Company>("/api/Company", example));
        response.EnsureSuccessStatusCode();
        bool result = await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }

    //[TestMethod]
    [Fact]

    public async Task DeleteCompanyTestAPI()
    {
        Company example = new()
        {
            Name = "Company2",
            Email = "company2@gmail.com",
            Password = "company2",
            PIB = 10000002
        };
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.PostAsJsonAsync<Company>("/api/Company", example));
        response.EnsureSuccessStatusCode();
        var request = new HttpRequestMessage
        {
            Method = HttpMethod.Delete,
            RequestUri = new Uri("http://localhost/api/Company"),
            Content = new StringContent(JsonConvert.SerializeObject(example), Encoding.UTF8, "application/json")
        };
        HttpResponseMessage response2 = (await client.SendAsync(request));
        response2.EnsureSuccessStatusCode();
        bool result2 = await response2.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result2);
        Assert.True(result2);
    }
}
