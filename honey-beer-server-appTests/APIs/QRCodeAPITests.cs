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
public class QRCodeAPITests 
{
    readonly ProjectFactory application;
    //readonly ProjectFactory application = new();

    public QRCodeAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task SaveQRCodeAPITest()
    {
        IServiceScope scope = application.Services.CreateScope();
        DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();
        Customer customer = new Customer()
        {
            Username = "customer1@gmail.com",
            Password = "customer1",
            Email = "customer1@gmail.com",
            PersonalEmailInstance = new PersonalEmail()
            {
                Email = "customer11@gmail.com"
            }
        };
        await context.Customer.AddAsync(customer);
        await context.SaveChangesAsync();

        QRCodeType codeType = new QRCodeType()
        {
            QRCodeTypeName = "Testing new product - apple bear remix"
        };
        await context.QRCodeType.AddAsync(codeType);
        await context.SaveChangesAsync();

        HttpClient client = application.CreateClient();
        QRCode code = new QRCode()
        {
            Code = "something",
            QRCodeTypeId =  codeType.QRCodeTypeId,
            ScannedBy = customer,
            QRCodeTypeInstance = codeType,
        };
        await context.QRCode.AddAsync(code);
        await context.SaveChangesAsync();

        HttpResponseMessage response = (await client.PostAsJsonAsync<QRCode>("/api/QRCode", code));
        response.EnsureSuccessStatusCode();
        bool? result = await response.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result);
        Assert.True(result);
    }
}
