using Microsoft.AspNetCore.Mvc;
using honey_beer_server_app.Models;
using System.Runtime.CompilerServices;
using Microsoft.AspNetCore.Cors;
using honey_beer_server_app.Services.CustomerService;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class CustomerController : ControllerBase
    {
        private readonly ICustomerService _customerService;

        public CustomerController(ICustomerService customerService)
        {
            _customerService = customerService;
        }

        [HttpGet]
        public ActionResult<List<Customer>> GetCustomers() {

            return Ok(_customerService.GetAllCustomers());
        }
        [HttpPost]
        public ActionResult<Customer> CreateCustomer(Customer customer)
        {
            try
            {
                customer = _customerService.CreateCustomer(customer);
                return Ok(customer);
            }
            catch(Exception ex)
            {
                return Problem(ex.Message, title: "Error while creating customer");
            }
                
                
            
        }
        [HttpDelete]
        public ActionResult<bool> DeleteCustomer(Customer customer) 
        {
            try
            {
                return Ok(_customerService.DeleteCustomer(customer));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while deleting customer");
            }
        }

        [HttpPost]
        [Route("saveVotes")]
        public ActionResult<bool> SaveAllVotes(List<CustomerAnswer> votes)
        {
            try
            {
                return Ok(_customerService.SaveAllVotes(votes));
            }
            catch(Exception ex)
            {
                return Problem(ex.Message, title: "Error while saving all votes");
            }
        }
    }
}
