using honey_beer_server_app.Models;
using honey_beer_server_app.Services.OfferByCompanyService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    public class OfferByCompanyController : ControllerBase
    {
        private readonly IOfferByCompanyService _offerByCompanyService;

        public OfferByCompanyController(IOfferByCompanyService offerByCompanyService) => _offerByCompanyService = offerByCompanyService;
        [HttpGet]
        [Route("get")]
        public ActionResult<List<OfferByCompany>> LoadAllOffersByCompany()
        {
            return Ok(_offerByCompanyService.GetAllOffersByCompany());
        }
        [HttpPost]
        [Route("save")]
        public ActionResult<bool> SaveOfferByCompany(OfferByCompany offerByCompany)
        {
            try
            {
                return Ok(_offerByCompanyService.SaveOfferByCompany(offerByCompany));
            }
            catch(Exception ex)
            {
                return Problem(ex.Message, title: "Error while saving offer by company.");
            }
        }
        [HttpPost]
        [Route("update")]
        public ActionResult<bool> UpdateOfferByCompany(OfferByCompany offerByCompany)
        {
            try
            {
                return Ok(_offerByCompanyService.UpdateOfferByCompany(offerByCompany));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while updating offer by company.");
            }
        }
        [HttpGet]
        [Route("getOfferByCompany/:id")]
        public ActionResult<OfferByCompany> LoadOfferByCompany(long id)
        {
            return Ok(_offerByCompanyService.LoadOfferByCompany(id));
        }
    }
}
