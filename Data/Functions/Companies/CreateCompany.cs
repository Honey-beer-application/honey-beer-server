using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.IdentityModel.Tokens;

namespace honey_beer_server_app.Data.Functions.Companies
{
    public class CreateCompany
    {
        private readonly DBContext _context;
        public CreateCompany(DBContext context) 
        {
            _context = context;
        }
        

        public bool ExecuteFunction(Company company)
        {
            if(!company.IsCompanyValid())
                return false;
            if (!_context.Company.Where(c => c.PIB == company.PIB).IsNullOrEmpty())
                throw new Exception("The company is already registered.");

            bool created = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Database.ExecuteSqlRaw("SET IDENTITY_INSERT dbo.company ON;");
                _context.Company.Add(company);
                _context.SaveChanges();
                transaction.Commit();
                created = true;
            }
            catch (Exception ex)
            {
                _context.SaveChanges();
                transaction.Rollback();
                throw new Exception(ex.Message);
            }
            _context.Database.ExecuteSqlRaw("SET IDENTITY_INSERT dbo.company OFF;");
            _context.SaveChanges();

            return created;
        }
        
    }
}
