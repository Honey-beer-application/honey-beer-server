using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Forms
{
    public class SaveForm
    {
        private DBContext _context;

        public SaveForm(DBContext context) => _context = context;

        public bool ExecuteFunction(Form form)
        {
            bool saved = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Form.Add(form);
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
