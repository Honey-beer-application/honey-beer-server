using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.MeetingService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class MeetingControllerTests
    {
        private readonly Mock<IMeetingService> meetingService = new ();

        //[TestMethod()]
        [Fact]
        public void UpdateMeetingTestShouldBeSuccessful()
        {
            Meeting example = new ();
            meetingService.Setup(service => service.UpdateMeeting(example)).Returns(true);
            MeetingController controller = new(meetingService.Object);
            ActionResult<bool> result = controller.UpdateMeeting(example);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);

        }

        //[TestMethod()]
        [Fact]
        public void UpdateMeetingTestShouldFail()
        {
            Meeting example = new();
            string message = "Update meeting failed";
            meetingService.Setup(service => service.UpdateMeeting(example)).Throws(new Exception(message));
            MeetingController controller = new(meetingService.Object);
            ActionResult<bool> result = controller.UpdateMeeting(example);
            //Assert.AreEqual(message,((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);

        }

        //[TestMethod()]
        [Fact]
        public void LoadAllAvailableMeetingsTest()
        {
            List<Meeting> meetings = new ()
            {
                new (),
                new ()
            };
            meetingService.Setup(service => service.LoadAllAvailableMeetings()).Returns(meetings);
            MeetingController controller = new (meetingService.Object);
            ActionResult<List<Meeting>> result = controller.LoadAllAvailableMeetings();
            //Assert.AreEqual(meetings, (result.Result as OkObjectResult)?.Value as List<Meeting>);
            Assert.Equal(meetings, (result.Result as OkObjectResult)?.Value as List<Meeting>);
        }
    }
}