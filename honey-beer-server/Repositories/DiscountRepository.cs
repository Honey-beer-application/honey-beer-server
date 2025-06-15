using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore;

namespace honey_beer_server_app.Repositories
{
    public class DiscountRepository
    {
        private readonly DBContext _context;

        public DiscountRepository(DBContext dbContext)
        {
            _context = dbContext;
        }

        public IEnumerable<Discount> LoadAllDiscounts()
        {
            return from discount in _context.Discount
                   join shoppingLocation in _context.ShoppingLocation
                   on discount.ShoppingLocationId equals shoppingLocation.ShoppingLocationId
                   join product in _context.Product on discount.ProductId equals product.ProductId
                   join company in _context.Company on shoppingLocation.PIB equals company.PIB
                   select new Discount()
                   {
                       PIB = discount.PIB,
                       ProductId = discount.ProductId,
                       BeginDate = discount.BeginDate,
                       EndDate = discount.EndDate,
                       Percentage = discount.Percentage,
                       ProductInstance = new Product()
                       {
                           ProductId = product.ProductId,
                           Description = product.Description,
                           Name = product.Name
                       },
                       ShoppingLocationId = discount.ShoppingLocationId,
                       ShoppingLocationInstance = new ShoppingLocation()
                       {
                           ShoppingLocationId = shoppingLocation.ShoppingLocationId,
                           Location = shoppingLocation.Location,
                           PIB = shoppingLocation.PIB,
                           CompanyInstance = new Company()
                           {
                               Email = company.Email,
                               Name = company.Name,
                               PIB = company.PIB
                           }
                       }
                   };
        }
    }
}
