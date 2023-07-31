using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class FormController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public FormController(IDBBrocker brocker) => _brocker = brocker;

        [HttpPost]
        public ActionResult<bool> saveForm(Form form)
        {
            bool saved = _brocker.SaveForm(form);
            if (saved)
                return Ok(saved);
            else
                return Problem(saved.ToString(), title: "Error while saving form.");
        }
    }
}
