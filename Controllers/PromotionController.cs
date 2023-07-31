using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PromotionController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public PromotionController(IDBBrocker brocker) =>_brocker = brocker;


        [HttpGet]
        public ActionResult<IEnumerable<EventLocation>> LoadAllPromotions()
        {
            return Ok(_brocker.LoadAllPromotions());
        }
    }
}
