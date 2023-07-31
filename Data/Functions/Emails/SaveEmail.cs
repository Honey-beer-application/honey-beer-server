using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Emails
{
    public class SaveEmail
    {
        private DBContext _context;

        public SaveEmail(DBContext context) => _context = context;

        public bool ExecuteFunction(SentCompanyEmail email)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            bool saved = false;
            try
            {
                _context.SentCompanyEmail.Add(email);
                _context.SaveChanges();
                transaction.Commit();
                saved = true;
            }
            catch (Exception) { transaction.Rollback(); }
            return saved;
        }
    }
}
