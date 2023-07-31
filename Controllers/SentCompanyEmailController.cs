using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class SentCompanyEmailController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public SentCompanyEmailController(IDBBrocker brocker)=> _brocker = brocker;


        [HttpPost]
        public ActionResult SaveEmail(SentCompanyEmail email)
        {
            bool saved = _brocker.SaveEmail(email);
            return saved ? Ok(saved) : Problem(saved.ToString(), title: "Error while saving email.");
        }
    }
}
