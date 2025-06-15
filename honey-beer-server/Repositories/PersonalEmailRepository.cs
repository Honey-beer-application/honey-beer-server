using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Repositories
{
    public class PersonalEmailRepository
    {
        private readonly DBContext _context;

        public PersonalEmailRepository(DBContext context) => _context = context;

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
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
        }
    }
}
