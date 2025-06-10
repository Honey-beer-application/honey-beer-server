using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;

namespace honey_beer_server_app.Repositories
{
    public class PromotionRepository
    {
        private readonly DBContext _context;

        public PromotionRepository(DBContext context) => _context = context;

        public IEnumerable<Event> LoadAllPromotions()
        {
            return from cEvent in _context.Event
                   join eventType in _context.EventType on cEvent.EventTypeId equals eventType.EventTypeId
                   where DateTime.Compare(cEvent.BeginDate, DateTime.Now) <= 0 &&
                         DateTime.Compare(cEvent.EndDate, DateTime.Now) >= 0 && eventType.Name.Equals("Promotion")
                   select new Event()
                   {
                       EventId = cEvent.EventId,
                       CreationDate = cEvent.CreationDate,
                       Description = cEvent.Description,
                       BeginDate = cEvent.BeginDate,
                       EndDate = cEvent.EndDate,
                       EventTypeId = cEvent.EventTypeId,
                       EventLocations = (from location in _context.EventLocation where location.EventId == cEvent.EventId select location).ToList(),
                       Title = cEvent.Title,
                       EventTypeInstance = eventType
                   };
        }

        public IEnumerable<EventLocation> LoadAllPromotionLocations()
        {
            return from eventLocation in _context.EventLocation
                    join cEvent in _context.Event
                    on eventLocation.EventId equals cEvent.EventId
                    join eventType in _context.EventType
                    on cEvent.EventTypeId equals eventType.EventTypeId
                    where DateTime.Compare(cEvent.BeginDate, DateTime.Now) <= 0 &&
                          DateTime.Compare(cEvent.EndDate, DateTime.Now) >= 0 && eventType.Name.Equals("Promotion")
                    select new EventLocation()
                    {
                        EventId = eventLocation.EventId,
                        EventLocationId = eventLocation.EventLocationId,
                        Location = eventLocation.Location,
                        EventInstance = new Event()
                        {
                            EventId = cEvent.EventId,
                            BeginDate = cEvent.BeginDate,
                            CreationDate = cEvent.CreationDate,
                            Description = cEvent.Description,
                            EndDate = cEvent.EndDate,
                            Title = cEvent.Title,
                            EventTypeId = cEvent.EventTypeId,
                            EventTypeInstance = new EventType()
                            {
                                EventTypeId = eventType.EventTypeId,
                                Name = eventType.Name
                            }
                        },
                    };
        }
    }
}
