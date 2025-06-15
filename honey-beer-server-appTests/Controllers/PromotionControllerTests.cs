using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.PromotionService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class PromotionControllerTests
    {
        readonly Mock<IPromotionService> promotionService = new Mock<IPromotionService>();

        //[TestMethod()]
        [Fact]
        public void LoadAllPromotionsTest()
        {
            List<Event> promotions = new List<Event>()
            {
                new Event(),
                new Event()
            };
            promotionService.Setup(service=>service.LoadAllPromotions()).Returns(promotions);
            PromotionController controller = new PromotionController(promotionService.Object);
            ActionResult<List<Event>> result = controller.LoadAllPromotions();
            //Assert.AreEqual(promotions, (result.Result as OkObjectResult)?.Value as List<Event>);
            Assert.Equal(promotions, (result.Result as OkObjectResult)?.Value as List<Event>);
        }

        //[TestMethod()]
        [Fact]
        public void LoadAllPromotionLocationsTest()
        {
            List<EventLocation> promotionLocations = new List<EventLocation>()
            {
                new EventLocation(),
                new EventLocation()
            };
            promotionService.Setup(service => service.LoadAllPromotionLocations()).Returns(promotionLocations);
            PromotionController controller = new PromotionController(promotionService.Object);
            ActionResult<List<EventLocation>> result = controller.LoadAllPromotionLocations();
            //Assert.AreEqual(promotionLocations, (result.Result as OkObjectResult)?.Value as List<EventLocation>);
            Assert.Equal(promotionLocations, (result.Result as OkObjectResult)?.Value as List<EventLocation>);
        }
    }
}