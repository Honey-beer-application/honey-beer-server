using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.ShoppingLocationService
{
    public interface IShoppingLocationService
    {
        public IEnumerable<ShoppingLocation> LoadAllShoppingLocations();
    }
}
