using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Repositories
{
    public class SentCompanyEmailRepository
    {
        private readonly DBContext _context;

        public SentCompanyEmailRepository(DBContext context) => _context = context;

        public bool SaveEmail(SentCompanyEmail email)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.SentCompanyEmail.Add(email);
                _context.SaveChanges();
                transaction.Commit();
                return true;
            }
            catch (Exception) 
            { 
                transaction.Rollback(); 
                throw; 
            }
        }
    }
}
