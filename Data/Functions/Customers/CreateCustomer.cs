using honey_beer_server_app.Models;
using honey_beer_server_app.DBBrockers;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore.Storage;
using System.Runtime.CompilerServices;

namespace honey_beer_server_app.Data.Functions.Customers
{
    public class CreateCustomer
    {
        private readonly DBContext _context;
        private List<string> _errors = new();
        string _fullMessage = "";
        public CreateCustomer(DBContext context)
        {
            _context = context;
        }
        public bool IsCustomerValid(Customer customer)
        {
            if(!customer.IsUsernameValid())
                _errors.Add("Customer username has more than 50 characters.");
            if(!customer.IsEmailValid()) 
                _errors.Add("Customer email is not correct.");
            IsCustomerRegistered(customer);
            ConvertMessagesListToString();
            return _errors.Count == 0;
        }
        public Customer ExecuteFunction(Customer customer)
        {
            if (!IsCustomerValid(customer))
                throw new Exception(_fullMessage);
            using IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Customer.Add(customer);
                _context.SaveChanges();
                transaction.Commit();
                return customer;
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
        }

        private void ConvertMessagesListToString()
        {
            if (_errors.Count > 0)
            {
                
                foreach (string message in _errors)
                {
                    _fullMessage += message + "\n";
                }
                throw new Exception(_fullMessage);
            }
        }

        private void IsCustomerRegistered(Customer customer)
        {
            
            if (_context.Customer.FirstOrDefault<Customer>(c => c.PersonalEmailInstance.Email.Equals(customer.PersonalEmailInstance.Email)) != null)
            {
                Customer? customer1 = _context.Customer.FirstOrDefault<Customer>(c => c.PersonalEmailInstance.Email.Equals(customer.PersonalEmailInstance.Email));
                _errors.Clear();
                _errors.Add("Customer with the email is already registered.");
            }
        }

        

        
    }
}
