using honey_beer_server_app.Controllers;
using honey_beer_server_app.Models;
using Moq;
using honey_beer_server_app.Services.FormService;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class FormControllerTests
    {
        private readonly Mock<IFormService> formService = new();

        //[TestMethod()]
        [Fact]
        public void SaveFormTestShouldBeSuccessful()
        {
            Event example = new();
            formService.Setup(service => service.CreateForm(example)).Returns(true);
            FormController formController = new(formService.Object);
            ActionResult<bool> result = formController.SaveForm(example);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);
        }

        //[TestMethod()]
        [Fact]
        public void SaveFormTestShouldFail()
        {
            Event example = new();
            string message = "Error while saving form";
            formService.Setup(service => service.CreateForm(example)).Throws(new Exception(message));
            FormController formController = new(formService.Object);
            ActionResult<bool> result = formController.SaveForm(example);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }
    }
}