using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class LocationController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public LocationController(IDBBrocker brocker) =>_brocker = brocker;
        [HttpGet]
        public IActionResult LoadAllLocations()
        {
            return Ok(_brocker.LoadAllLocations());
        }
    }
}
