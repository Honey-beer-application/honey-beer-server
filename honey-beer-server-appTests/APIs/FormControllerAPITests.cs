using honey_beer_server_app;
using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.Extensions.DependencyInjection;
using System.Net.Http.Json;
using System.Threading.Tasks;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.APIs;

//[TestClass]
public class FormControllerAPITests
{
    //readonly ProjectFactory application = new();

    ////[TestMethod]
    //[Fact]
    //public async Task SaveFormAPITests()
    //{
    //    QuestionType? questionType = new()
    //    {
    //        Name = "Text"
    //    };
    //    EventType eventType = new EventType()
    //    {
    //        Name = "Form"
    //    };
    //    IServiceScope scope = application.Services.CreateScope();
    //    DBContext context = scope.ServiceProvider.GetRequiredService<DBContext>();
    //    await context.QuestionType.AddAsync(questionType);
    //    await context.EventType.AddAsync(eventType);
    //    Customer customer = new Customer()
    //    {
    //        Email = "customer10@gmail.com",
    //        Password = "customer1",
    //        Username = "customer1",
    //        PersonalEmailInstance = new PersonalEmail()
    //        {
    //            Email = "customer1@gmail.com"
    //        }
    //    };
    //    await context.Customer.AddAsync(customer);
    //    await context.SaveChangesAsync();
    //    Event example = new()
    //    {
    //        BeginDate = DateTime.Now,
    //        CreationDate = DateTime.Now,
    //        Description = "Description 1",
    //        EndDate = DateTime.Now,
    //        Title = "Title 1",
    //        EventTypeId = eventType.EventTypeId,
    //        EventTypeInstance = eventType,
    //        Questions = new List<Question>()
    //        {
    //            new Question()
    //            {
    //                QuestionTypeId = 1,
    //                QuestionTypeInstance = questionType,
    //                Text = "Question 1",
    //                Answers = new List<Answer>()
    //                {
    //                    new Answer()
    //                    {
    //                        Value = "This answer is nice",

    //                        CustomerAnswers = new List<CustomerAnswer>()
    //                        {
    //                            new CustomerAnswer()
    //                            {

    //                                Customer = customer
    //                            }
    //                        }
    //                    }
    //                }
    //            }
    //        }
    //    };
    //    HttpClient client = application.CreateClient();
    //    HttpResponseMessage response = (await client.PostAsJsonAsync<Event>("/api/Form", example));
    //    string message = await response.Content.ReadAsStringAsync();
    //    response.EnsureSuccessStatusCode();
    //    Form? result = response.Content.ReadFromJsonAsync<Form>().Result;
    //    Assert.IsNotNull(result);
    //}
}
