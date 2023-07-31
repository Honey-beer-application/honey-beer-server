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
