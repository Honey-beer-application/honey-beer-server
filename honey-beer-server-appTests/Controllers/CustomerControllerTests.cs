using honey_beer_server_app.Controllers;
using honey_beer_server_app.Models;
using honey_beer_server_app.Services.CustomerService;
using Microsoft.AspNetCore.Mvc;
using Moq;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers { 
    //[TestClass()]
    public class CustomerControllerTests
    {
        readonly Mock<ICustomerService> customerService = new ();

        //[TestMethod()]
        [Fact]
        public void GetCustomersTest()
        {
            List<Customer> customers = new List<Customer>()
            {
                new Customer(),
                new Customer()
            };
            customerService.Setup(service => service.GetAllCustomers()).Returns(customers);
            CustomerController controller = new CustomerController(customerService.Object);
            ActionResult<List<Customer>> result = controller.GetCustomers();
            //Assert.AreEqual(customers, (result.Result as OkObjectResult)?.Value as List<Customer>);
            Assert.Equal(customers, (result.Result as OkObjectResult)?.Value as List<Customer>);
        }

        //[TestMethod()]
        [Fact]
        public void CreateCustomerTestShouldBeSuccessful()
        {
            Customer example = new ()
            {
                Email = "customer1@gmail.com",
                Password = "customer1",
                Username = "cuctomer1"
            };
            Customer result = new ()
            {
                CustomerId = 1,
                Email = "customer1@gmail.com",
                Password = "customer1",
                Username = "cuctomer1"
            };
            customerService.Setup(service => service.CreateCustomer(example)).Returns(result);
            CustomerController controller = new (customerService.Object);
            ActionResult<Customer> response = controller.CreateCustomer(example);
            //Assert.AreEqual(result, (Customer?)(response.Result as OkObjectResult)?.Value);
            Assert.Equal(result, (Customer?)(response.Result as OkObjectResult)?.Value);
        }

        //[TestMethod()]
        [Fact]
        public void CreateCustomerTestShouldFail()
        {
            Customer example = new()
            {
                Email = "customer1@gmail.com",
                Password = "customer1",
                Username = "cuctomer1"
            };
            string message = "Error while saving company";
            customerService.Setup(service => service.CreateCustomer(example)).Throws(new Exception(message));
            CustomerController controller = new(customerService.Object);
            ActionResult<Customer> response = controller.CreateCustomer(example);
            //Assert.AreEqual(message, ((response.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((response.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }

        //[TestMethod()]
        [Fact]
        public void DeleteCustomerTestShouldBeSuccessful()
        {
            Customer example = new()
            {
                CustomerId= 1,
                Email = "customer1@gmail.com",
                Password = "customer1",
                Username = "customer1"
            };
            customerService.Setup(service => service.DeleteCustomer(example)).Returns(true);
            CustomerController controller = new(customerService.Object);
            ActionResult<bool> result = controller.DeleteCustomer(example);
            //Assert.IsTrue((bool?)(result.Result as OkObjectResult)?.Value);
            Assert.True((bool?)(result.Result as OkObjectResult)?.Value);
        }

        //[TestMethod()]
        [Fact]
        public void DeleteCustomerTestShouldFail()
        {
            Customer example = new()
            {
                CustomerId = 1,
                Email = "customer1@gmail.com",
                Password = "customer1",
                Username = "customer1"
            };
            string message = "Deleting customer failed";
            customerService.Setup(service => service.DeleteCustomer(example)).Throws(new Exception(message));
            CustomerController controller = new(customerService.Object);
            ActionResult<bool> result = controller.DeleteCustomer(example);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }

        //[TestMethod()]
        [Fact]
        public void SaveAllVotesTestShouldBeSuccessful()
        {
            List<CustomerAnswer> votes = new List<CustomerAnswer>() 
            {
                new (),
                new ()
            };
            customerService.Setup(service => service.SaveAllVotes(votes)).Returns(true);
            CustomerController controller = new(customerService.Object);
            ActionResult<bool> result = controller.SaveAllVotes(votes);
            //Assert.IsTrue((bool?)(result.Result as OkObjectResult)?.Value);
            Assert.True((bool?)(result.Result as OkObjectResult)?.Value);
        }

        //[TestMethod()]
        [Fact]
        public void SaveAllVotesTestShouldFail()
        {
            List<CustomerAnswer> votes = new List<CustomerAnswer>()
            {
                new (),
                new ()
            };
            string message = "Error while saving votes";
            customerService.Setup(service => service.SaveAllVotes(votes)).Throws(new Exception(message));
            CustomerController controller = new(customerService.Object);
            ActionResult<bool> result = controller.SaveAllVotes(votes);
            //Assert.AreEqual(message,((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }
    }
}