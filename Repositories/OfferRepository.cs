using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;
using System;

namespace honey_beer_server_app.Repositories
{
    public class OfferRepository
    {
        private readonly DBContext _context;

        public OfferRepository(DBContext context) => _context = context;

        public IEnumerable<Offer> GetAllOffers()
        {
            return from product in _context.Product
                   join offer in _context.Offer
                   on product.ProductId equals offer.ProductId
                   where !(from o in _context.OfferByCompany select o.OfferId).Any(off => off == offer.OfferId)
                   select new Offer()
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
                   };
        }

        public bool CreateOffer(OfferByCompany offer)
        {
            if (offer.OfferInstance == null || !offer.OfferInstance.IsOfferValid())
                return false;
            
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                if (offer.OfferInstance.ProductInstance != null) offer.OfferInstance.ProductInstance = null;
                _context.Offer.Add(offer.OfferInstance);
                _context.SaveChanges();
                if (offer.CompanyInstance != null)
                {
                    offer.OfferId = offer.OfferInstance.OfferId;
                    offer.OfferInstance = null;
                    offer.PIB = offer.CompanyInstance.PIB;
                    offer.CompanyInstance = null;
                    _context.OfferByCompany.Add(offer);
                    _context.SaveChanges();
                }
                
                transaction.Commit();
                return true;
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
        }
    }
}
