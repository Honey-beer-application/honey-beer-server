using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.IdentityModel.Tokens;
using Serilog;

namespace honey_beer_server_app.Repositories
{
    public class CompanyRepository
    {
        private readonly DBContext _context;
        private readonly ILogger<CompanyRepository> logger;
        public CompanyRepository(DBContext context, ILogger<CompanyRepository> logger) 
        { 
            _context = context;
            this.logger = logger;
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
            catch (Exception e)
            {
                logger.LogError(500, e.Message, e.StackTrace);
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
            catch (Exception e)
            {
                logger.LogError(500, e.Message, e.StackTrace);
                transaction.Rollback();
                throw;
            }
            return deleted;
        }
    }
}
