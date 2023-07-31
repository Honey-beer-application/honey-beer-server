using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.OfferByCompanies
{
    public class UpdateOfferByCompany
    {
        private DBContext _context;

        public UpdateOfferByCompany(DBContext context) => _context = context;

        
        public bool ExecuteFunction(OfferByCompany offerByCompany)
        {
            if(!offerByCompany.OfferInstance.IsOfferValid())
                return false;
            bool saved = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Offer.Update(offerByCompany.OfferInstance);
                _context.SaveChanges();
                transaction.Commit();
                saved = true;
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
            return saved;
        }

        
        

        
    }
}
