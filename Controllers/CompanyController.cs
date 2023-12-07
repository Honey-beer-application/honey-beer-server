using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    
    public class CompanyController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public CompanyController(IDBBrocker brocker) => _brocker = brocker;
        [HttpPost]
        public ActionResult<Company> CreateCompany(Company company)
        {
            try
            {
                bool created = _brocker.CreateCompany(company);
                return Ok(created);
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while creating company");
            }
            /*bool created = _brocker.CreateCompany(company);
            if (created)
                return Ok(created);
            else
                return Problem(created.ToString(), title: "Error while creating company");*/
        }
        [HttpDelete]
        public ActionResult DeleteCompany(Company company)
        {
            bool deleted = _brocker.DeleteCompany(company);
            if (deleted)
                return Ok(deleted);
            else
                return Problem(deleted.ToString(), title: "Error while deleting company");
        }
    }
}
