using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.SentCompanyEmailService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class SentCompanyEmailControllerTests
    {
        readonly Mock<ISentCompanyEmailService> sentCompanyEmailService = new Mock<ISentCompanyEmailService>();

        //[TestMethod()]
        [Fact]
        public void SaveEmailTestShouldBeSuccessful()
        {
            SentCompanyEmail email = new SentCompanyEmail();
            sentCompanyEmailService.Setup(service => service.SaveEmail(email)).Returns(true);
            SentCompanyEmailController controller = new SentCompanyEmailController(sentCompanyEmailService.Object);
            ActionResult<bool> result = controller.SaveEmail(email);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);
        }

        //[TestMethod()]
        [Fact]
        public void SaveEmailTestShouldFail()
        {
            SentCompanyEmail email = new SentCompanyEmail();
            string message = "Error while saving email";
            sentCompanyEmailService.Setup(service => service.SaveEmail(email)).Throws(new Exception(message));
            SentCompanyEmailController controller = new SentCompanyEmailController(sentCompanyEmailService.Object);
            ActionResult<bool> result = controller.SaveEmail(email);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }
    }
}