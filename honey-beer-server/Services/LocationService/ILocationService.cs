using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.LocationService
{
    public interface ILocationService
    {
        public IEnumerable<Location> LoadAllLocations();
    }
}
