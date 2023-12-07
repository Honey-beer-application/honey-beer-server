using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : Controller
    {
        private readonly IDBBrocker _brocker;

        public ProductController(IDBBrocker brocker) =>_brocker = brocker;
        [HttpGet]
        public ActionResult<Product> GetAllProducts()
        {
            return Ok(_brocker.LoadAllProducts());
        }
    }
}
