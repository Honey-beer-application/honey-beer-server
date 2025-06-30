using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Serilog;

namespace honey_beer_server_app.Repositories
{
    public class PersonalEmailRepository
    {
        private readonly DBContext _context;
        private readonly ILogger<PersonalEmailRepository> logger;

        public PersonalEmailRepository(DBContext context, ILogger<PersonalEmailRepository> logger)
        {
            _context = context;
            this.logger = logger;
        }

        public bool SendEmail(SentPersonalEmail email)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            
            try
            {
                if (!_context.PersonalEmail.Any(e => e.Email.Equals(email.Email)))
                    _context.PersonalEmail.Add(email.PersonalEmailInstance);
                 
                _context.SentPersonalEmail.Add(email);
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
