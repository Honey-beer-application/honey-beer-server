using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class DiscountController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public DiscountController(IDBBrocker brocker) =>_brocker = brocker;


        [HttpGet]
        public ActionResult<Discount> LoadAllDiscounts()
        {
            return Ok(_brocker.LoadAllDiscounts());
        }
    }
}
