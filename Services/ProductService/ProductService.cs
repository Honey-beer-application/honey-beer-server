using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.ProductService
{
    public class ProductService : IProductService
    {
        private readonly ProductRespository _repository;

        public ProductService(ProductRespository repository) => _repository = repository;

        public IEnumerable<Product> GetAllProducts() => _repository.GetAllProducts();
    }
}
