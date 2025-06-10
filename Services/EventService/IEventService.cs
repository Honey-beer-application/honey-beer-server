using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.EventService
{
    public interface IEventService
    {
        public IEnumerable<Event> LoadAllEvents();
    }
}
