using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Customers
{
    public class DeleteCustomer
    {
        private readonly DBContext _context;
        public DeleteCustomer(DBContext context) => _context = context;

        public bool ExecuteFunction(Customer customer)
        {
            using IDbContextTransaction transaction = _context.Database.BeginTransaction();
            bool deleted = false;
            try
            {
                _context.Customer.Remove(customer);
                _context.PersonalEmail.Remove(customer.PersonalEmailInstance);
                transaction.Commit();
                deleted = true;
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
            _context.SaveChanges();
            return deleted;
        }
    }
}
