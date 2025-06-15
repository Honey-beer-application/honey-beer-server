using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.CustomerService
{
    public interface ICustomerService
    {
        public IEnumerable<Customer> GetAllCustomers();
        public Customer CreateCustomer(Customer customer);
        public bool DeleteCustomer(Customer customer);
        public bool SaveAllVotes(List<CustomerAnswer> votes);

    }
}
