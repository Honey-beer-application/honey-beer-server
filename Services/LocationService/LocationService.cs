using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.LocationService
{
    public class LocationService : ILocationService
    {
        private readonly LocationRepository _locationRepository;

        public LocationService(LocationRepository locationRepository) => _locationRepository = locationRepository;

        public IEnumerable<Location> LoadAllLocations() => _locationRepository.LoadAllLocations();
    }
}
