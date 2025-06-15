using honey_beer_server_app.Controllers;
using honey_beer_server_app.Models;
using honey_beer_server_app.Services.CompanyService;
using Microsoft.AspNetCore.Mvc;
using Moq;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class CompanyControllerTests
    {
        private readonly Mock<ICompanyService> companyService = new Mock<ICompanyService>();
        private readonly Company example = new()
        {
            PIB = 100001,
            Email = "company1@gmail.com",
            Name = "company1",
            Password = "company1"
        };


        //[TestMethod()]
        [Fact]
        public void CreateCompanyTestShouldBeExecutedSuccessfully()
        {
            companyService.Setup<bool>(service => service.CreateCompany(example)).Returns(true);
            CompanyController controller = new (companyService.Object);
            ActionResult<bool> result = controller.CreateCompany(company: example);
            //Assert.IsTrue(condition: (bool?)(result.Result as OkObjectResult)?.Value);
            Assert.True((bool?)(result.Result as OkObjectResult)?.Value);
        }

        //[TestMethod()]
        [Fact]
        public void CreateCompanyTestShouldFail()
        {
            string message = "Error while saving";
            companyService.Setup<bool>(service => service.CreateCompany(example)).Throws(new Exception(message));
            CompanyController controller = new(companyService.Object);
            ActionResult<bool> result = controller.CreateCompany(example);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }

        //[TestMethod()]
        [Fact]
        public void DeleteCompanyTestShouldBeExecutedSuccessfully()
        {
            companyService.Setup<bool>(service => service.DeleteCompany(example)).Returns(true);
            CompanyController controller = new(companyService.Object);
            ActionResult<bool> result = controller.DeleteCompany(company: example);
            //Assert.IsTrue((bool?)(result.Result as OkObjectResult)?.Value);
            Assert.True((bool?)(result.Result as OkObjectResult)?.Value);
        }

        //[TestMethod()]
        [Fact]
        public void DeleteCompanyTestShouldFail()
        {
            string message = "Delete failed";
            companyService.Setup<bool>(service => service.DeleteCompany(example)).Throws(new Exception(message));
            CompanyController controller = new(companyService.Object);
            ActionResult<bool> result = controller.DeleteCompany(company: example);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }
        
    }
}