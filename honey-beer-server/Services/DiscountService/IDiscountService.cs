using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.DiscountService
{
    public interface IDiscountService
    {
        public IEnumerable<Discount> LoadAllDiscounts();
    }
}
