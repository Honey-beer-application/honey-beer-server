using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.OfferSerice
{
    public interface IOfferService
    {
        public IEnumerable<Offer> GetAllOffers();

        public bool CreateOffer(OfferByCompany offerByCompany);
    }
}
