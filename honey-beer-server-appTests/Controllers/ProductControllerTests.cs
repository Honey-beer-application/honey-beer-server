using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.ProductService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class ProductControllerTests
    {
        readonly Mock<IProductService> productService = new Mock<IProductService>();

        //[TestMethod()]
        [Fact]
        public void GetAllProductsTest()
        {
            List<Product> products = new List<Product>()
            {
                new Product(),
                new Product()
            };
            productService.Setup(service => service.GetAllProducts()).Returns(products);
            ProductController controller = new ProductController(productService.Object);
            ActionResult<List<Product>> result = controller.GetAllProducts();
            //Assert.AreEqual(products, (result.Result as OkObjectResult)?.Value as List<Product>);
            Assert.Equal(products, (result.Result as OkObjectResult)?.Value as List<Product>);
        }
    }
}