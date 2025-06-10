using honey_beer_server_app.Models;
using honey_beer_server_app.Services.ProductService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly IProductService _productService;

        public ProductController(IProductService productService) => _productService = productService;
        [HttpGet]
        public ActionResult<List<Product>> GetAllProducts()
        {
            return Ok(_productService.GetAllProducts());
        }
    }
}
