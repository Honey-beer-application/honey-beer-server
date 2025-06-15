using honey_beer_server_app.Models;
using honey_beer_server_app.Services.MeetingService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    public class MeetingController : ControllerBase
    {
        private readonly IMeetingService _meetingService;

        public MeetingController(IMeetingService meetingService) => _meetingService = meetingService;
        [HttpPost]
        [Route("schedule")]
        public ActionResult<bool> UpdateMeeting(Meeting meeting)
        {
            try
            {
                return Ok(_meetingService.UpdateMeeting(meeting));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Problem while creating meeting.");
            }
                
        }
        [HttpGet]
        public ActionResult<List<Meeting>> LoadAllAvailableMeetings() 
        {
            return Ok(_meetingService.LoadAllAvailableMeetings());
        }
    }
}
