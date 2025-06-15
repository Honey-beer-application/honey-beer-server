using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.QRCodeService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;
namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class QRCodeControllerTests
    {
        readonly Mock<IQRCodeService> qrCodeService = new Mock<IQRCodeService>();

        //[TestMethod()]
        [Fact]
        public void SaveQRCodeTestShouldBeSuccessful()
        {
            QRCode example = new QRCode();
            qrCodeService.Setup(service => service.SaveQRCode(example)).Returns(true);
            QRCodeController controller = new QRCodeController(qrCodeService.Object);
            ActionResult<bool> result = controller.SaveQRCode(example);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);

        }

        //[TestMethod()]
        [Fact]
        public void SaveQRCodeTestShouldFail()
        {
            QRCode example = new QRCode();
            string message = "Error while saving QR core information";
            qrCodeService.Setup(service => service.SaveQRCode(example)).Throws(new Exception(message));
            QRCodeController controller = new QRCodeController(qrCodeService.Object);
            ActionResult<bool> result = controller.SaveQRCode(example);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);

        }
    }
}