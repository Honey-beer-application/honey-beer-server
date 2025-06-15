using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.PromotionService
{
    public class PromotionService : IPromotionService
    {
        private readonly PromotionRepository _repository;

        public PromotionService(PromotionRepository repository) => _repository = repository;

        public IEnumerable<Event> LoadAllPromotions() => _repository.LoadAllPromotions();

        public IEnumerable<EventLocation> LoadAllPromotionLocations() => _repository.LoadAllPromotionLocations();
    }
}
