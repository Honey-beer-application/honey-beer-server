using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.OfferByCompanyService
{
    public interface IOfferByCompanyService
    {
        public IEnumerable<OfferByCompany> GetAllOffersByCompany();
        public bool SaveOfferByCompany(OfferByCompany offerByCompany);
        public bool UpdateOfferByCompany(OfferByCompany offerByCompany);
        public OfferByCompany LoadOfferByCompany(long id);

    }
}
