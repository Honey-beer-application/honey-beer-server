using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OfferController : ControllerBase
    {
        private IDBBrocker _brocker;

        public OfferController(IDBBrocker brocker) => _brocker = brocker;
        [HttpGet]
        public ActionResult<IEnumerable<Offer>> GetAllOffers()
        {
            return Ok(_brocker.GetAllOffers());
        }
        [HttpPost]
        public ActionResult<bool> CreateOffer(OfferByCompany offerByCompany) 
        {
            bool created = _brocker.CreateOffer(offerByCompany);
            if (created)
                return Ok(created);
            else
                return Problem(created.ToString(),title:"Error while creating offer.");
        }
    }
}
