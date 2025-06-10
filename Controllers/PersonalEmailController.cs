using honey_beer_server_app.Models;
using honey_beer_server_app.Services.PersonalEmailService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class PersonalEmailController : ControllerBase
    {
        private readonly IPersonalEmailService _personalEmailService;

        public PersonalEmailController(IPersonalEmailService personalEmailService) => _personalEmailService = personalEmailService;
        [HttpPost]
        public ActionResult<bool> SendEmail(SentPersonalEmail sentEmail)
        {
            try
            {
                return Ok(_personalEmailService.SendEmail(sentEmail));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while saving sent e-mail");
            }
            
        }
    }
}
