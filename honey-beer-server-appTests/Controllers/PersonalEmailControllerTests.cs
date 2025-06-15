using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.PersonalEmailService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class PersonalEmailControllerTests
    {
        readonly Mock<IPersonalEmailService> personalEmailService = new Mock<IPersonalEmailService>();

        //[TestMethod()]
        [Fact]
        public void SendEmailTestShouldBeSuccessful()
        {
            SentPersonalEmail example = new SentPersonalEmail();
            personalEmailService.Setup(service => service.SendEmail(example)).Returns(true);
            PersonalEmailController controller = new PersonalEmailController(personalEmailService.Object);
            ActionResult<bool> result = controller.SendEmail(example);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);
        }

        //[TestMethod()]
        [Fact]
        public void SendEmailTestShouldFail()
        {
            SentPersonalEmail example = new SentPersonalEmail();
            string message = "Error while sending email";
            personalEmailService.Setup(service => service.SendEmail(example)).Throws(new Exception(message));
            PersonalEmailController controller = new PersonalEmailController(personalEmailService.Object);
            ActionResult<bool> result = controller.SendEmail(example);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }
    }
}