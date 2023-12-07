using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class PersonalEmailController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public PersonalEmailController(IDBBrocker brocker) => _brocker = brocker;
        [HttpPost]
        public ActionResult<bool> SendEmail(SentPersonalEmail sentEmail)
        {
            bool sent = _brocker.SendEmail(sentEmail);
            return sent? Ok(sent) : Problem(sent.ToString(), title:"Error while saving sent e-mail");
        }
    }
}
