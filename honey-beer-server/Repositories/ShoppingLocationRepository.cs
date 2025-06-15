using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Repositories
{
    public class ShoppingLocationRepository
    {
        private readonly DBContext _context;

        public ShoppingLocationRepository(DBContext context) => _context = context;

        public IEnumerable<ShoppingLocation> LoadAllShoppingLocations()
        {
            return from shoppingLocation in _context.ShoppingLocation
                   join company in _context.Company
                   on shoppingLocation.PIB equals company.PIB
                   where (from productInLocation in _context.ProductInLocation
                          where productInLocation.ShoppingLocationId == shoppingLocation.ShoppingLocationId && productInLocation.PIB == shoppingLocation.PIB
                          select productInLocation.ShoppingLocationId).Count() > 0
                   select new ShoppingLocation()
                   {
                       PIB = shoppingLocation.PIB,
                       Location = shoppingLocation.Location,
                       ShoppingLocationId = shoppingLocation.ShoppingLocationId,
                       ProductsInLocation = (from product in _context.Product
                                             join productInLocation in _context.ProductInLocation
                                            on product.ProductId equals productInLocation.ProductId
                                             where productInLocation.ShoppingLocationId == shoppingLocation.ShoppingLocationId && productInLocation.PIB == shoppingLocation.PIB
                                             select new Product()
                                             {
                                                 ProductId = product.ProductId,
                                                 Description = product.Description,
                                                 Name = product.Name
                                             }).ToList()
                   };
        }
    }
}
