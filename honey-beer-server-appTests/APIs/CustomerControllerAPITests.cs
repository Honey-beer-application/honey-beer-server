using honey_beer_server_app;
using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;
using System.Net.Http.Json;
using System.Text;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
[Collection("ProjectCollection")]
public class CustomerControllerAPITests
{
    private readonly ProjectFactory application;
    //private readonly ProjectFactory application = new();

    public CustomerControllerAPITests(ProjectFactory application)
    {
        this.application = application;
    }

    //[TestMethod]
    [Fact]
    public async Task GetCustomersTestAPI()
    {
        HttpClient client = application.CreateClient();
        List<Customer>? response = await (await client.GetAsync("/api/Customer")).Content.ReadFromJsonAsync<List<Customer>>();
        //Assert.InstanceOfType<List<Customer>>(response);
        Assert.IsType<List<Customer>>(response);
    }

    //[TestMethod]
    [Fact]
    public async Task CreateCustomerTestAPI()
    {
        HttpClient client = application.CreateClient();
        Customer example = new ()
        {
            Email = "customer1@gmail.com",
            Username = "customer1",
            Password = "customer1",
            PersonalEmailInstance = new PersonalEmail()
            {
                Email = "customer1@gmail.com"
            }
        };

        HttpResponseMessage response = (await client.PostAsJsonAsync<Customer>("/api/Customer", example));
        Customer? result =await response.Content.ReadFromJsonAsync<Customer>();
        response.EnsureSuccessStatusCode();
        //Assert.AreNotEqual(example.CustomerId, result?.CustomerId);
        Assert.NotEqual(example.CustomerId, result?.CustomerId);
    }

    //[TestMethod]
    [Fact]
    public async Task DeleteCustomerTestAPI()
    {
        HttpClient client = application.CreateClient();
        Customer example = new()
        {
            CustomerId = 0,
            Email = "customer2@gmail.com",
            Username = "customer2",
            Password = "customer2",
            PersonalEmailInstance = new PersonalEmail()
            {
                Email = "customer2@gmail.com"
            }
        };

        HttpResponseMessage response = (await client.PostAsJsonAsync<Customer>("/api/Customer", example));
        response.EnsureSuccessStatusCode();
        Customer? result = await response.Content.ReadFromJsonAsync<Customer>();
        if(result == null) throw new Exception("Result is null after customer creation");
        var request = new HttpRequestMessage
        {
            Method = HttpMethod.Delete,
            RequestUri = new Uri("http://localhost/api/Customer"),
            Content = new StringContent(JsonConvert.SerializeObject(result), Encoding.UTF8, "application/json")
        };
        HttpResponseMessage response2 = (await client.SendAsync(request));
        bool? result2 = await response2.Content.ReadFromJsonAsync<bool>();
        //Assert.IsTrue(result2);
        Assert.True(result2);

    }

    //[Fact]
    //public async Task SaveAllVotesAPITest()
    //{
    //    HttpClient client = application.CreateClient();
    //    IServiceScope scope = application.Services.CreateScope();
    //    DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();
    //    Customer customer = new Customer()
    //    {
    //        Email= "customer31@gmail.com",
    //        Password = "customer31",
    //        Username = "customer31",
    //        PersonalEmailInstance= new PersonalEmail()
    //        {
    //            Email = "customer31@gmail.com"
    //        }
    //    };
    //    context.Customer.Add(customer);
    //    EventType eventType = new EventType()
    //    {
    //        Name = "Promotion"
    //    };
    //    context.EventType.Add(eventType);
    //    Event EventInstance = new Event()
    //    {
    //        BeginDate = DateTime.Now.AddDays(+10),
    //        CreationDate = DateTime.Now,
    //        Description = "New event",
    //        EndDate = DateTime.Now.AddDays(+15),
    //        Title = "New event title",
    //        EventTypeId = eventType.EventTypeId,
    //        EventTypeInstance = eventType
    //    };
    //    context.Event.Add(EventInstance);
    //    Form form = new Form()
    //    {

    //    };
    //    List<CustomerAnswer> votes = new List<CustomerAnswer>()
    //    {
    //        new CustomerAnswer()
    //        {
    //            CustomerId = customer.CustomerId,
    //            Customer = customer,
                
    //        }
    //    };
    //}
}