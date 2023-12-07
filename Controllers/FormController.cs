using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class FormController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public FormController(IDBBrocker brocker) => _brocker = brocker;

        [HttpPost]
        public ActionResult<bool> saveForm(Event eventForm)
        {
            bool saved = _brocker.SaveForm(eventForm);
            if (saved)
                return Ok(saved);
            else
                return Problem(saved.ToString(), title: "Error while saving form.");
        }
    }
}
