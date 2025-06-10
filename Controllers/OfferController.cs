using honey_beer_server_app.Models;
using honey_beer_server_app.Services.OfferSerice;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    public class OfferController : ControllerBase
    {
        private readonly IOfferService _offerService;

        public OfferController(IOfferService offerService) => _offerService = offerService;
        [HttpGet]
        public ActionResult<List<Offer>> GetAllOffers()
        {
            return Ok(_offerService.GetAllOffers());
        }
        [HttpPost]
        public ActionResult<bool> CreateOffer(OfferByCompany offerByCompany) 
        {
            try
            {
                return Ok(_offerService.CreateOffer(offerByCompany));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while creating offer.");
            }
        }
    }
}
