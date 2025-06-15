using honey_beer_server_app.Models;
using honey_beer_server_app.Services.SentCompanyEmailService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class SentCompanyEmailController : ControllerBase
    {
        private readonly ISentCompanyEmailService _service;

        public SentCompanyEmailController(ISentCompanyEmailService sentCompanyEmailService)=> _service = sentCompanyEmailService;


        [HttpPost]
        public ActionResult<bool> SaveEmail(SentCompanyEmail email)
        {
            try
            {
                return Ok(_service.SaveEmail(email));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while saving email.");
            }
        }
    }
}
