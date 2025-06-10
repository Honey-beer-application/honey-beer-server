using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.FormService
{
    public class FormService : IFormService
    {
        private readonly FormRepository _repository;

        public FormService(FormRepository repository) => _repository = repository;

        public bool CreateForm(Event eventForm) => _repository.Createform(eventForm);
    }
}
