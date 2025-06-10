using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.MeetingService
{
    public interface IMeetingService
    {
        public bool UpdateMeeting(Meeting meeting);
        public IEnumerable<Meeting> LoadAllAvailableMeetings();
    }
}
