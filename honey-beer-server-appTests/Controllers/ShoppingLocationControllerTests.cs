using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.ShoppingLocationService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class ShoppingLocationControllerTests
    {
        readonly Mock<IShoppingLocationService> shoppingLocationService = new Mock<IShoppingLocationService>();

        //[TestMethod()]
        [Fact]
        public void LoadAllShoppingLocationsTest()
        {
            List<ShoppingLocation> locations = new List<ShoppingLocation>()
            {
                new(),
                new()
            };
            shoppingLocationService.Setup(service => service.LoadAllShoppingLocations()).Returns(locations);
            ShoppingLocationController controller = new ShoppingLocationController(shoppingLocationService.Object);
            ActionResult<List<ShoppingLocation>> result = controller.LoadAllShoppingLocations();
            //Assert.AreEqual(locations, (result.Result as OkObjectResult)?.Value as List<ShoppingLocation>);
            Assert.Equal(locations, (result.Result as OkObjectResult)?.Value as List<ShoppingLocation>);
        }
    }
}