using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MeetingController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public MeetingController(IDBBrocker brocker) => _brocker = brocker;
        [HttpPost]
        [Route("schedule")]
        public ActionResult<bool> UpdateMeeting(Meeting meeting)
        {
            bool created = _brocker.UpdateMeeting(meeting);
            return created ==true ? Ok(true) : 
                Problem(created.ToString(),title:"Problem while creating meeting.");
        }
        [HttpGet]
        public ActionResult<Meeting[]> LoadAllAvailableMeetings() 
        {
            return Ok(_brocker.LoadAllMeetings());
        }
    }
}
