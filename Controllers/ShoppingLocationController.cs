using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class ShoppingLocationController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public ShoppingLocationController(IDBBrocker brocker) => _brocker = brocker;


        [HttpGet]
        public ActionResult<ShoppingLocation> LoadAllShoppingLocations()
        {
            return Ok(_brocker.LoadAllShoppingLocations());
        }
    }
}
