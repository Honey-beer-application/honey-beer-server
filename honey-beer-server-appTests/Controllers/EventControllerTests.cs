using honey_beer_server_app.Controllers;
using honey_beer_server_app.Models;
using honey_beer_server_app.Services.EventService;
using Microsoft.AspNetCore.Mvc;
using Moq;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class EventControllerTests
    {
        private readonly Mock<IEventService> eventService = new ();

        //[TestMethod()]
        [Fact]
        public void LoadAllEventsTest()
        {
            List<Event> events = new ()
            {
                new ()
            };
            eventService.Setup(service => service.LoadAllEvents()).Returns(events);
            EventController controller = new (eventService.Object);  
            ActionResult<List<Event>> result = controller.LoadAllEvents();
            //Assert.AreEqual(events, (List<Event>?)(result.Result as OkObjectResult)?.Value);
            Assert.Equal(events, (List<Event>?)(result.Result as OkObjectResult)?.Value);
        }
    }
}