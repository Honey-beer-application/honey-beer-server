using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.IdentityModel.Tokens;

namespace honey_beer_server_app.Repositories
{
    public class CompanyRepository
    {
        private readonly DBContext _context;
        public CompanyRepository(DBContext context) 
        { 
            _context = context;
        }

        public bool CreateCompany(Company company)
        {
            if (!_context.Company.Where(c => c.PIB == company.PIB).IsNullOrEmpty())
                throw new Exception("The company is already registered.");

            bool created = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Company.Add(company);
                _context.SaveChanges();
                transaction.Commit();
                created = true;
            }
            catch (Exception)
            {
                _context.SaveChanges();
                transaction.Rollback();
                throw;
            }
            _context.SaveChanges();

            return created;
        }
        public bool DeleteCompany(Company company)
        {
            bool deleted = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Company.Remove(company);
                _context.SaveChanges();
                transaction.Commit();
                deleted = true;
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
            return deleted;
        }
    }
}
