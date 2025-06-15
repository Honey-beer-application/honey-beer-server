using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.PersonalEmailService
{
    public class PersonalEmailService : IPersonalEmailService
    {
        private readonly PersonalEmailRepository _repository;

        public PersonalEmailService(PersonalEmailRepository repository) => _repository = repository;

        public bool SendEmail(SentPersonalEmail email) => _repository.SendEmail(email);
    }
}
