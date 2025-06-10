using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.CompanyService
{
    public interface ICompanyService
    {
        public bool CreateCompany(Company company);
        public bool DeleteCompany(Company company);
    }
}
