using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.EventService
{
    public class EventService : IEventService
    {
        private readonly EventRepository _repository;

        public EventService(EventRepository repository) => _repository = repository;

        public IEnumerable<Event> LoadAllEvents() => _repository.LoadAllEvents();
    }
}
