using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.ProductService
{
    public interface IProductService
    {
        public IEnumerable<Product> GetAllProducts();
    }
}
