using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.OfferByCompanies
{
    public class SaveOfferByCompnay
    {
        private DBContext _context;

        public SaveOfferByCompnay(DBContext context) => _context = context;

        public bool ExcecuteFunction(OfferByCompany offerByCompany)
        {
            if(offerByCompany.OfferInstance==null&&!offerByCompany.OfferInstance.IsOfferValid())
                return false;
            bool saved = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                offerByCompany.OfferInstance.OfferId = 0;
                _context.Offer.Add(offerByCompany.OfferInstance);
                offerByCompany.OfferId = offerByCompany.OfferInstance.OfferId;
                //_context.Database.ExecuteSqlRaw("SET IDENTITY_INSERT dbo.offer_by_company ON;");
                _context.OfferByCompany.Add(offerByCompany);
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
