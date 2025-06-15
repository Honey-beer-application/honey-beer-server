using honey_beer_server_app.Services.LocationService;
using Moq;
using honey_beer_server_app.Models;
using honey_beer_server_app.Controllers;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class LocationControllerTests
    {
        private readonly Mock<ILocationService> locationService = new ();

        //[TestMethod()]
        [Fact]
        public void LoadAllLocationsTest()
        {
            List<Location> locations = new List<Location>()
            {
                new (),
                new (),
            };
            locationService.Setup(service => service.LoadAllLocations()).Returns(locations);
            LocationController controller = new (locationService.Object);
            ActionResult<List<Location>> result = controller.LoadAllLocations();
            //Assert.AreEqual(locations, (result.Result as OkObjectResult)?.Value as List<Location>);
            Assert.Equal(locations, (result.Result as OkObjectResult)?.Value as List<Location>);

        }
    }
}