using honey_beer_server_app.Models;
using honey_beer_server_app.Services.ShoppingLocationService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class ShoppingLocationController : ControllerBase
    {
        private readonly IShoppingLocationService _shoppingLocationService;

        public ShoppingLocationController(IShoppingLocationService shoppingLocationService) => _shoppingLocationService = shoppingLocationService;


        [HttpGet]
        public ActionResult<List<ShoppingLocation>> LoadAllShoppingLocations()
        {
            return Ok(_shoppingLocationService.LoadAllShoppingLocations());
        }
    }
}
