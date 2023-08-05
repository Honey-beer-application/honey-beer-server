using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Emails
{
    public class SaveSentPersonalEmail
    {
        private readonly DBContext _context;

        public SaveSentPersonalEmail(DBContext context) =>_context = context;

        public bool ExecuteFunction(SentPersonalEmail email)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            bool sent = false;
            try
            {
                if (!_context.PersonalEmail.Any(e => e.Email.Equals(email.Email)))
                    _context.PersonalEmail.Add(email.PersonalEmailInstance);
                email.PersonalEmailInstance = null;
                _context.SentPersonalEmail.Add(email);
                _context.SaveChanges();
                transaction.Commit();
                sent = true;
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
            return sent;
        }
    }
}
