using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OfferByCompanyController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public OfferByCompanyController(IDBBrocker brocker) => _brocker = brocker;
        [HttpPost]
        [Route("get")]
        public ActionResult<IEnumerable<OfferByCompany>> LoadAllOffersByCompany(Company company)
        {
            return Ok(_brocker.GetAllOffersByCompany(company));
        }
        [HttpPost]
        [Route("save")]
        public ActionResult<bool> SaveOfferByCompany(OfferByCompany offerByCompany)
        {
            bool saved = _brocker.SaveOfferByCompany(offerByCompany);
            if (saved)
                return Ok(saved);
            else
                return Problem(saved.ToString(), title: "Error while saving offer by company.");
        }
        [HttpPost]
        [Route("update")]
        public ActionResult<bool> UpdateOfferByCompany(OfferByCompany offerByCompany)
        {
            bool saved = _brocker.UpdateOfferByCompany(offerByCompany);
            if (saved)
                return Ok(saved);
            else
                return Problem(saved.ToString(), title: "Error while updating offer by company.");
        }
        [HttpGet]
        [Route("getOfferByCompany/:id")]
        public ActionResult<IEnumerable<OfferByCompany>> LoadOfferByCompany(long id)
        {
            return Ok(_brocker.LoadOfferByCompany(id));
        }
    }
}
