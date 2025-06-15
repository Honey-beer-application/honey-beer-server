using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.OfferSerice
{
    public class OfferService : IOfferService
    {
        private readonly OfferRepository _offerRepository;

        public OfferService(OfferRepository offerRepository) => _offerRepository = offerRepository;

        public IEnumerable<Offer> GetAllOffers() => _offerRepository.GetAllOffers();

        public bool CreateOffer(OfferByCompany offerByCompany) => _offerRepository.CreateOffer(offerByCompany);
    }
}
