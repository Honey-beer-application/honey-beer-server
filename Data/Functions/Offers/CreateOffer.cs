using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Offers
{
    public class CreateOffer
    {
        private DBContext _context;

        public CreateOffer(DBContext context) => _context = context;

        public bool ExcecuteFunction(OfferByCompany offer)
        {
            if (offer.OfferInstance != null&&!offer.OfferInstance.IsOfferValid())
                return false;
            bool created = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Add(offer);
                _context.SaveChanges();
                transaction.Commit();
                created = true;
            }catch (Exception) 
            {
                transaction.Rollback();
            }
            return created;
        }
    }
}
