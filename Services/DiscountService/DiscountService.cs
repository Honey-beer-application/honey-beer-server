using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.DiscountService
{
    public class DiscountService : IDiscountService
    {
        private readonly DiscountRepository _repository;

        public DiscountService(DiscountRepository repository)
        {
            _repository = repository;
        }

        public IEnumerable<Discount> LoadAllDiscounts() => _repository.LoadAllDiscounts();
    }
}
