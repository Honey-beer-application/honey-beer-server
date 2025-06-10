using honey_beer_server_app.Models;
using honey_beer_server_app.Services.FormService;
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
        private readonly IFormService _formService;

        public FormController(IFormService formService) => _formService = formService;

        [HttpPost]
        public ActionResult<bool> SaveForm(Event eventForm)
        {
            try
            {
                return Ok(_formService.CreateForm(eventForm));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while saving form.");
            }
        }
    }
}
