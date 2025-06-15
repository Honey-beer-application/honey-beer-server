using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;

namespace honey_beer_server_app.Repositories
{
    public class ProductRespository
    {
        private readonly DBContext _context;

        public ProductRespository(DBContext context) => _context = context;

        public IEnumerable<Product> GetAllProducts()
        {
            return from product in _context.Product
                   select new Product()
                   {
                       ProductId = product.ProductId,
                       Name = product.Name,
                       Description = product.Description,
                       OfferInstance = _context.Offer.Where(offer => offer.ProductId == product.ProductId).ToList()
                   };
        }
    }
}
