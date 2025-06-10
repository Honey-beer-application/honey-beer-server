using honey_beer_server_app.Models;
using honey_beer_server_app.Services.DiscountService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class DiscountController : ControllerBase
    {
        private readonly IDiscountService _discountService;

        public DiscountController(IDiscountService discountService) => _discountService = discountService;


        [HttpGet]
        public ActionResult<List<Discount>> LoadAllDiscounts()
        {
            return Ok(_discountService.LoadAllDiscounts());
        }
    }
}
