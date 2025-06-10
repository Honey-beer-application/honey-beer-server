using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Repositories
{
    public class OfferByCompanyRepository
    {
        private readonly DBContext _context;

        public OfferByCompanyRepository(DBContext context) => _context = context;

        public IEnumerable<OfferByCompany> GetAllOffersByCompany()
        {
            return from obc in _context.OfferByCompany
                   join offer in _context.Offer
                    on new { obc.ProductId, obc.OfferId } equals new { offer.ProductId, offer.OfferId }
                   join product in _context.Product on offer.ProductId equals product.ProductId
                   select new OfferByCompany()
                   {
                       PIB = obc.PIB,
                       ProductId = obc.ProductId,
                       OfferId = obc.OfferId,
                       CompanyInstance = null,
                       OfferInstance = new Offer()
                       {
                           ProductId = offer.ProductId,
                           OfferId = offer.OfferId,
                           Amount = offer.Amount,
                           BeginDate = offer.BeginDate,
                           EndDate = offer.EndDate,
                           ProductInstance = new Product()
                           {
                               ProductId = product.ProductId,
                               Name = product.Name,
                               Description = product.Description
                           }
                       }
                   };
        }
        public bool SaveOfferByCompany(OfferByCompany offerByCompany)
        {
            if (offerByCompany.OfferInstance == null || !offerByCompany.OfferInstance.IsOfferValid())
                return false;

            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Offer.Add(offerByCompany.OfferInstance);
                _context.SaveChanges();
                offerByCompany.OfferId = offerByCompany.OfferInstance.OfferId;
                offerByCompany.OfferInstance = null;
                _context.OfferByCompany.Add(offerByCompany);
                _context.SaveChanges();
                transaction.Commit();
                return true;
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
        }

        public bool UpdateOfferByCompany(OfferByCompany offerByCompany)
        {
            if (offerByCompany.OfferInstance== null || !offerByCompany.OfferInstance.IsOfferValid())
                return false;

            if (offerByCompany.OfferInstance.ProductInstance != null)
                offerByCompany.OfferInstance.ProductInstance = null;

            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Offer.Update(offerByCompany.OfferInstance);
                _context.SaveChanges();
                transaction.Commit();
                return true;
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
        }

        public OfferByCompany LoadOfferByCompany (long id)
        {
            return (from offerByCompany in _context.OfferByCompany
                    join offer in _context.Offer
                    on new { offerByCompany.OfferId, offerByCompany.ProductId } equals new { offer.OfferId, offer.ProductId }
                    join product in _context.Product on offer.ProductId equals product.ProductId
                    where offerByCompany.OfferId == id
                    select new OfferByCompany()
                    {
                        PIB = offerByCompany.PIB,
                        ProductId = offerByCompany.ProductId,
                        OfferId = offerByCompany.OfferId,
                        OfferInstance = new Offer()
                        {
                            OfferId = offerByCompany.OfferId,
                            ProductId = product.ProductId,
                            Amount = offer.Amount,
                            BeginDate = offer.BeginDate,
                            EndDate = offer.EndDate,
                            ProductInstance = new Product()
                            {
                                ProductId = product.ProductId,
                                Name = product.Name,
                                Description = product.Description,
                            }
                        }
                    }).First();
        }
    }
}
