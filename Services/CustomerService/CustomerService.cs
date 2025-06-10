using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.CustomerService
{
    public class CustomerService : ICustomerService
    {
        private readonly CustomerRepository _repository;

        public CustomerService(CustomerRepository repository)
        {
            _repository = repository;
        }

        public IEnumerable<Customer> GetAllCustomers() => _repository.GetAllCustomers();

        public Customer CreateCustomer(Customer customer) => _repository.CreateCustomer(customer);

        public bool DeleteCustomer(Customer customer) =>  _repository.DeleteCustomer(customer);

        public bool SaveAllVotes(List<CustomerAnswer> votes) => _repository.SaveAllVotes(votes);
    }
}
