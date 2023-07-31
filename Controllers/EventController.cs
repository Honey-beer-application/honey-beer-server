using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class EventController : ControllerBase
    {
        private readonly IDBBrocker _database;

        public EventController(IDBBrocker database) =>this._database = database;
        [HttpGet]
        public ActionResult<List<Event>> LoadAllEvents()
        {
            return Ok(_database.LoadAllEvents());
        }
    }
}
