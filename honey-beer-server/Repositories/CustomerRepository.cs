using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Serilog;

namespace honey_beer_server_app.Repositories
{
    public class CustomerRepository
    {
        private readonly DBContext _context;
        private readonly ILogger<CustomerRepository> logger;
        public CustomerRepository(DBContext context, ILogger<CustomerRepository> logger) 
        {
            _context = context;
            this.logger = logger;
        }


        public IEnumerable<Customer> GetAllCustomers()
        {
            return _context.Customer.Include(customer => customer.PersonalEmailInstance);
        }

        public Customer CreateCustomer(Customer customer)
        {
            using IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Customer.Add(customer);
                _context.SaveChanges();
                transaction.Commit();
                return customer;
            }
            catch (Exception e)
            {
                logger.LogError(500, e.Message, e.StackTrace);
                transaction.Rollback();
                throw;
            }
        }

        public bool DeleteCustomer(Customer customer)
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
            catch (Exception e)
            {
                logger.LogError(500, e.Message, e.StackTrace);
                transaction.Rollback();
                throw;
            }
            _context.SaveChanges();
            return deleted;
        }

        public bool SaveAllVotes(List<CustomerAnswer> votes)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();

            bool saved = false;
            try
            {
                votes.ForEach(vote => _context.CustomerAnswer.Add(vote) );
                _context.SaveChanges();
                transaction.Commit();
                saved = true;
            }
            catch (Exception e)
            {
                logger.LogError(500, e.Message, e.StackTrace);
                transaction.Rollback();
                throw;
            }
            return saved;
        }
    }
}
