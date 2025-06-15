using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.OfferByCompanyService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class OfferByCompanyControllerTests
    {
        readonly Mock<IOfferByCompanyService> offerByCompanyService = new Mock<IOfferByCompanyService>();


        //[TestMethod()]
        [Fact]
        public void LoadAllOffersByCompanyTest()
        {
            List<OfferByCompany> offersByCompanies = new () 
            { 
                new (),
                new ()
            };
            OfferByCompanyController controller = new OfferByCompanyController(offerByCompanyService.Object);
            offerByCompanyService.Setup(service => service.GetAllOffersByCompany()).Returns(offersByCompanies);
            ActionResult<List<OfferByCompany>> result = controller.LoadAllOffersByCompany();
            //Assert.AreEqual(offersByCompanies, (result.Result as OkObjectResult)?.Value as List<OfferByCompany>);
            Assert.Equal(offersByCompanies, (result.Result as OkObjectResult)?.Value as List<OfferByCompany>);
        }

        //[TestMethod()]
        [Fact]
        public void SaveOfferByCompanyTestShouldBeSucessful()
        {
            OfferByCompany example = new OfferByCompany();
            offerByCompanyService.Setup(service => service.SaveOfferByCompany(example)).Returns(true);
            OfferByCompanyController controller = new OfferByCompanyController(offerByCompanyService.Object);
            ActionResult<bool> result = controller.SaveOfferByCompany(example);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);
        }

        //[TestMethod()]
        [Fact]
        public void SaveOfferByCompanyTestShouldFail()
        {
            OfferByCompany example = new OfferByCompany();
            string message = "Saving offer by company failed";
            offerByCompanyService.Setup(service => service.SaveOfferByCompany(example)).Throws(new Exception(message));
            OfferByCompanyController controller = new OfferByCompanyController(offerByCompanyService.Object);
            ActionResult<bool> result = controller.SaveOfferByCompany(example);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }

        //[TestMethod()]
        [Fact]
        public void UpdateOfferByCompanyTestShouldBeSuccessful()
        {
            OfferByCompany example = new OfferByCompany();
            offerByCompanyService.Setup(service => service.UpdateOfferByCompany(example)).Returns(true);
            OfferByCompanyController controller = new OfferByCompanyController(offerByCompanyService.Object);
            ActionResult<bool> result = controller.UpdateOfferByCompany(example);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);
        }

        //[TestMethod()]
        [Fact]
        public void UpdateOfferByCompanyTestShouldFail()
        {
            OfferByCompany example = new OfferByCompany();
            string message = "Error while updating offer by company";
            offerByCompanyService.Setup(service => service.UpdateOfferByCompany(example)).Throws(new Exception(message));
            OfferByCompanyController controller = new OfferByCompanyController(offerByCompanyService.Object);
            ActionResult<bool> result = controller.UpdateOfferByCompany(example);
            //Assert.AreEqual(message,((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }

        //[TestMethod()]
        [Fact]
        public void LoadOfferByCompanyTest()
        {
            long id = 1L;
            OfferByCompany example = new OfferByCompany();
            offerByCompanyService.Setup(service => service.LoadOfferByCompany(id)).Returns(example);
            OfferByCompanyController controller = new OfferByCompanyController(offerByCompanyService.Object);
            ActionResult<OfferByCompany> result = controller.LoadOfferByCompany(id);
            //Assert.AreEqual(example, (result.Result as OkObjectResult)?.Value as OfferByCompany);
            Assert.Equal(example, (result.Result as OkObjectResult)?.Value as OfferByCompany);

        }
    }
}