using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.PromotionService
{
    public interface IPromotionService
    {
        public IEnumerable<Event> LoadAllPromotions();
        public IEnumerable<EventLocation> LoadAllPromotionLocations();
    }
}
