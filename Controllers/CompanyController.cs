using honey_beer_server_app.Models;
using honey_beer_server_app.Services.CompanyService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    
    public class CompanyController : ControllerBase
    {
        private readonly ICompanyService _companyService;

        public CompanyController(ICompanyService companyService) 
        { 
            _companyService = companyService;
        }
        [HttpPost]
        public ActionResult<bool> CreateCompany(Company company)
        {
            try
            {
                return Ok(_companyService.CreateCompany(company));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while creating company");
            }
        }
        [HttpDelete]
        public ActionResult<bool> DeleteCompany(Company company)
        {
            try
            {
                return Ok(_companyService.DeleteCompany(company));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while deleting company");
            }
        }
    }
}
