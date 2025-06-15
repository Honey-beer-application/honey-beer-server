using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.SentCompanyEmailService
{
    public class SentCompanyEmailService : ISentCompanyEmailService
    {
        private readonly SentCompanyEmailRepository _repository;

        public SentCompanyEmailService(SentCompanyEmailRepository repository) => _repository = repository;


        public bool SaveEmail(SentCompanyEmail email) => _repository.SaveEmail(email);
    }
}
