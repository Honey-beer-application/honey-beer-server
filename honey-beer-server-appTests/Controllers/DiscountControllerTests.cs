using honey_beer_server_app.Services.DiscountService;
using Moq;
using honey_beer_server_app.Models;
using honey_beer_server_app.Controllers;
using Microsoft.AspNetCore.Mvc;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class DiscountControllerTests
    {
        private readonly Mock<IDiscountService> discountService = new ();

        //[TestMethod()]
        [Fact]
        public void LoadAllDiscountsTest()
        {
            List<Discount> discounts = new List<Discount>()
            {
                new (),
                new ()
            };
            discountService.Setup(service => service.LoadAllDiscounts()).Returns(discounts);
            DiscountController controller = new (discountService.Object);
            ActionResult<List<Discount>> result = controller.LoadAllDiscounts();
            //Assert.AreEqual(discounts, (List<Discount>?)(result.Result as OkObjectResult)?.Value);
            Assert.Equal(discounts, (List<Discount>?)(result.Result as OkObjectResult)?.Value);

        }
    }
}