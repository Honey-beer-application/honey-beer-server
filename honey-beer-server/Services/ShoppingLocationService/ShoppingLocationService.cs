using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.ShoppingLocationService
{
    public class ShoppingLocationService : IShoppingLocationService
    {
        private readonly ShoppingLocationRepository _repository;

        public ShoppingLocationService(ShoppingLocationRepository repository) => _repository = repository;


        public IEnumerable<ShoppingLocation> LoadAllShoppingLocations() => _repository.LoadAllShoppingLocations();
    }
}
