using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.MeetingService
{
    public class MeetingService : IMeetingService
    {
        private readonly MeetingRepository _repository;

        public MeetingService(MeetingRepository repository) => _repository = repository;

        public bool UpdateMeeting(Meeting meeting) => _repository.UpdateMeeting(meeting);

        public IEnumerable<Meeting> LoadAllAvailableMeetings() => _repository.LoadAllAvailableMeetings();
    }
}
