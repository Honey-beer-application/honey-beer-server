using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.OfferByCompanyService
{
    public class OfferByCompanyService :IOfferByCompanyService
    {
        private readonly OfferByCompanyRepository _repository;

        public OfferByCompanyService(OfferByCompanyRepository repository) => _repository = repository;

        public IEnumerable<OfferByCompany> GetAllOffersByCompany() => _repository.GetAllOffersByCompany();

        public bool SaveOfferByCompany(OfferByCompany offerByCompany) => _repository.SaveOfferByCompany(offerByCompany);

        public bool UpdateOfferByCompany(OfferByCompany offerByCompany) => _repository.UpdateOfferByCompany(offerByCompany);

        public OfferByCompany LoadOfferByCompany(long id) => _repository.LoadOfferByCompany(id);
    }
}
