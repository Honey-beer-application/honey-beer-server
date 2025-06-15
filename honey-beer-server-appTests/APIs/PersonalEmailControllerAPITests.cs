using honey_beer_server_app;
using System.Net.Http.Json;
using honey_beer_server_app.Models;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class PersonalEmailControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public PersonalEmailControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task SendEmailAPITest()
    {
        HttpClient client = application.CreateClient();

        SentPersonalEmail email = new()
        {
            Email = "email1@gmail.com",
            SentPersonalEmailId = 0,
            DateAndTime = DateTime.Now,
            PersonalEmailInstance = new PersonalEmail()
            {
                Email = "email1@gmail.com"
            }
        };

        HttpResponseMessage response = (await client.PostAsJsonAsync<SentPersonalEmail>("/api/PersonalEmail", email));
        response.EnsureSuccessStatusCode();
        bool? result = await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }
}
