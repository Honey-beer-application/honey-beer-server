using honey_beer_server_app.Models;
using honey_beer_server_app.Services.EventService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class EventController : ControllerBase
    {
        private readonly IEventService _eventService;

        public EventController(IEventService eventService) =>_eventService = eventService;
        [HttpGet]
        public ActionResult<List<Event>> LoadAllEvents()
        {
            return Ok(_eventService.LoadAllEvents());
        }
    }
}
