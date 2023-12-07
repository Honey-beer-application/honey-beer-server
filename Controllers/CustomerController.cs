using Microsoft.AspNetCore.Mvc;
using honey_beer_server_app.Models;
using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using System.Runtime.CompilerServices;
using Microsoft.AspNetCore.Cors;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class CustomerController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public CustomerController(IDBBrocker brocker) => _brocker = brocker;

        [HttpGet]
        public ActionResult<IEnumerable<Customer>> GetCustomers() {

            return Ok(_brocker.GetAllCustomers());
        }
        [HttpPost]
        public ActionResult<Customer> CreateCustomer(Customer customer)
        {
            try
            {
                customer = _brocker.CreateCustomer(customer);
                return Ok(customer);
            }
            catch(Exception ex)
            {
                return Problem(ex.Message, title: "Error while creating customer");
            }
                
                
            
        }
        [HttpDelete]
        public ActionResult<Customer> DeleteCustomer(Customer customer) 
        {
            bool deleted = _brocker.DeleteCustomer(customer);
            if (deleted)
                return Ok(true);
            else
                return Problem(deleted.ToString(), title: "Error while deleting customer");
        }

        [HttpPost]
        [Route("saveVotes")]
        public ActionResult<bool> SaveAllVotes(List<CustomerAnswer> votes)
        {
            bool saved = _brocker.SaveAllVotes(votes);
            return saved ? Ok(saved) : Problem(saved.ToString(),title:"Error while saving all votes");
        }
    }
}
