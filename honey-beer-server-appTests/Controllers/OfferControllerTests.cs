using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.OfferSerice;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class OfferControllerTests
    {
        readonly Mock<IOfferService> offerService = new Mock<IOfferService>();

        //[TestMethod()]
        [Fact]
        public void GetAllOffersTest()
        {
            List<Offer> offers = new List<Offer>() 
            { 
                new Offer(),
                new Offer()
            };
            offerService.Setup(service=>service.GetAllOffers()).Returns(offers);
            OfferController controller = new OfferController(offerService.Object);
            ActionResult<List<Offer>> result = controller.GetAllOffers();
            //Assert.AreEqual(offers, (result.Result as OkObjectResult)?.Value as List<Offer>);
            Assert.Equal(offers, (result.Result as OkObjectResult)?.Value as List<Offer>);
        }

        //[TestMethod()]
        [Fact]
        public void CreateOfferTestShouldBeSuccessful()
        {
            OfferByCompany enter = new OfferByCompany();
            offerService.Setup(service=> service.CreateOffer(enter)).Returns(true);
            OfferController controller = new OfferController(offerService.Object);
            ActionResult<bool> result = controller.CreateOffer(enter);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);
        }

        //[TestMethod()]
        [Fact]
        public void CreateOfferTestShouldFail()
        {
            OfferByCompany enter = new OfferByCompany();
            string message = "Error while saving offer";
            offerService.Setup(service => service.CreateOffer(enter)).Throws(new Exception(message));
            OfferController controller = new OfferController(offerService.Object);
            ActionResult<bool> result = controller.CreateOffer(enter);
            //Assert.AreEqual(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }
    }
}