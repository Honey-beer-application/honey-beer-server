using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Companies
{
    public class DeleteCompany
    {
        private DBContext _context;

        public DeleteCompany(DBContext context) => _context = context;

        public bool ExecuteFunction(Company company)
        {
            bool deleted = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Company.Remove(company);
                _context.SaveChanges();
                transaction.Commit();
                deleted = true;
            }catch (Exception) 
            {
                transaction.Rollback();
            }
            return deleted;
        }
    }
}
