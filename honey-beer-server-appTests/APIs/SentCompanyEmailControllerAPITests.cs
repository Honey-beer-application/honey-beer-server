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
public class SentCompanyEmailControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public SentCompanyEmailControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }



    //[TestMethod]
    [Fact]
    public async Task SaveEmailAPITest()
    {
        IServiceScope scope = application.Services.CreateScope();
        DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();
        Company company = new Company()
        {
            PIB = 10000016,
            Email = "company8@gmail.com",
            Name = "company8",
            Password = "company8"
        };
        await context.Company.AddAsync(company);
        await context.SaveChangesAsync();
        HttpClient client = application.CreateClient();
        SentCompanyEmail example = new()
        {
            CompanyInstance = company,
            DateAndTime = DateTime.Now, 
            PIB = company.PIB
        };
        HttpResponseMessage response = (await client.PostAsJsonAsync<SentCompanyEmail>("/api/SentCompanyEmail", example));
        response.EnsureSuccessStatusCode();
        bool result = await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }
}
