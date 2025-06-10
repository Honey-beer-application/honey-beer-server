using honey_beer_server_app.Models;
using honey_beer_server_app.Services.PromotionService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class PromotionController : ControllerBase
    {
        private readonly IPromotionService _promotionService;

        public PromotionController(IPromotionService promotionService) =>_promotionService = promotionService;


        [HttpGet]
        public ActionResult<List<Event>> LoadAllPromotions()
        {
            return Ok(_promotionService.LoadAllPromotions());
        }

        [HttpGet]
        [Route("locations")]
        public ActionResult<List<EventLocation>> LoadAllPromotionLocations()
        {
            return Ok(_promotionService.LoadAllPromotionLocations());
        }
    }
}
