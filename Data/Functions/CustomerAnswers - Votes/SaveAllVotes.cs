using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.CustomerAnswers___Votes
{
    public class SaveAllVotes
    {
        private readonly DBContext _context;

        public SaveAllVotes(DBContext context) => _context = context;

        public bool ExecuteFunction(List<CustomerAnswer> votes)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();

            bool saved = false;
            try
            {
                foreach(CustomerAnswer vote in votes)
                {
                    _context.CustomerAnswer.Add(vote);
                }
                _context.SaveChanges();
                transaction.Commit();
                saved = true;
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
            return saved;
        }
    }
}
