using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.CompanyService
{
    public class CompanyService : ICompanyService
    {
        private readonly CompanyRepository _repository;
        public CompanyService(CompanyRepository repository) 
        {
            _repository = repository;
        }

        public virtual bool CreateCompany(Company company)
        {
            return _repository.CreateCompany(company);
        }

        public virtual bool DeleteCompany(Company company)
        {
            return _repository.DeleteCompany(company);
        }
    }
}
