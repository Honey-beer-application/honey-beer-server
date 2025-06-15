using honey_beer_server_app.Models;
using honey_beer_server_app.Services.LocationService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class LocationController : ControllerBase
    {
        private readonly ILocationService _locationService;

        public LocationController(ILocationService locationService) =>_locationService = locationService;
        [HttpGet]
        public ActionResult<List<Location>> LoadAllLocations()
        {
            return Ok(_locationService.LoadAllLocations());
        }
    }
}
