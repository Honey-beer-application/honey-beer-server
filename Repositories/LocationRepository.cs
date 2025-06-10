using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;

namespace honey_beer_server_app.Repositories
{
    public class LocationRepository
    {
        private readonly DBContext _context;

        public LocationRepository(DBContext context) => _context = context;

        public IEnumerable<Location> LoadAllLocations() => _context.Location;
    }
}
