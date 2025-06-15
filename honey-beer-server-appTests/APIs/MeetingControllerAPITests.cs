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
public class MeetingControllerAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public MeetingControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task UpdateMeetingAPITest()
    {
        using var scope = application.Services.CreateScope();
        DBContext _context = scope.ServiceProvider.GetRequiredService<DBContext>();
        Company company = new ()
        {
            PIB = 10000011,
            Name = "company5",
            Email = "company5@gmail.com",
            Password = "company5"
        };
        await _context.Company.AddAsync(company);
        await _context.SaveChangesAsync();
        
        

        Meeting meeting = new()
        {
            Subject = "Subject 1",
            StartTime = DateTime.Now.AddDays(+6),
            EndTime = DateTime.Now,
            Location = "Location 1",
            PIB = company.PIB,
            CompanyInstance = company
        };
        await _context.Meeting.AddAsync(meeting);
        await _context.SaveChangesAsync();
        HttpClient client = application.CreateClient();
        meeting.Subject = "Subject 2";

        HttpResponseMessage response = (await client.PostAsJsonAsync<Meeting>("/api/Meeting/schedule", meeting));
        response.EnsureSuccessStatusCode();
        bool? result = await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }

    //[TestMethod]
    [Fact]
    public async Task LoadAllAvailableMeetingsAPITest()
    {
        HttpClient client = application.CreateClient();
        HttpResponseMessage response = (await client.GetAsync("/api/Meeting"));
        response.EnsureSuccessStatusCode();
        List<Meeting>? result = await response.Content.ReadFromJsonAsync<List<Meeting>>();
        //Assert.IsNotNull(result);
        Assert.NotNull(result);
    }
}
