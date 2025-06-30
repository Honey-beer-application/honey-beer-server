using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;
using Serilog;

namespace honey_beer_server_app.Repositories
{
    public class SentCompanyEmailRepository
    {
        private readonly DBContext _context;
        private readonly ILogger<SentCompanyEmailRepository> logger;

        public SentCompanyEmailRepository(DBContext context, ILogger<SentCompanyEmailRepository> logger)
        {
            _context = context;
            this.logger = logger;
        }

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
            catch (Exception e) 
            {
                logger.LogError(500, e.Message, e.StackTrace);
                transaction.Rollback(); 
                throw; 
            }
        }
    }
}
