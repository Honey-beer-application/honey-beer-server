using honey_beer_server_app.Controllers;
using Moq;
using honey_beer_server_app.Services.ReservationService;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;
using Xunit;
using Assert = Xunit.Assert;
using FactAttribute = Xunit.FactAttribute;

namespace honey_beer_server_appTests.Controllers
{
    //[TestClass()]
    public class ReservationControllerTests
    {
        readonly Mock<IReservationService> reservationService = new Mock<IReservationService>();
        //[TestMethod()]
        [Fact]
        public void LoadAllReservationsTest()
        {
            List<Reservation> reservations = new List<Reservation>() 
            { 
                new Reservation(),
                new Reservation()
            };
            reservationService.Setup(service => service.LoadAllReservations()).Returns(reservations);
            ReservationController controller = new ReservationController(reservationService.Object);
            ActionResult<List<Reservation>> result = controller.LoadAllReservations();
            //Assert.AreEqual(reservations, (result.Result as OkObjectResult)?.Value as List<Reservation>);
            Assert.Equal(reservations, (result.Result as OkObjectResult)?.Value as List<Reservation>);

        }

        //[TestMethod()]
        [Fact]
        public void SelectReservationsTest()
        {
            Reservation example = new Reservation();
            List<Reservation> selectionResult = new List<Reservation>();
            reservationService.Setup(service => service.SelectReservations(example)).Returns(selectionResult);
            ReservationController controller = new ReservationController(reservationService.Object);
            ActionResult<List<Reservation>> result = controller.SelectReservations(example);
            //Assert.AreEqual(selectionResult, (result.Result as OkObjectResult)?.Value as List<Reservation>);
            Assert.Equal(selectionResult, (result.Result as OkObjectResult)?.Value as List<Reservation>);
        }

        //[TestMethod()]
        [Fact]
        public void SaveReservationTestShouldBeSuccessful()
        {
            Reservation example = new Reservation();
            reservationService.Setup(service => service.SaveReservation(example)).Returns(true);
            ReservationController controller = new ReservationController(reservationService.Object);
            ActionResult<bool> result = controller.SaveReservation(example);
            //Assert.IsTrue((result.Result as OkObjectResult)?.Value as bool?);
            Assert.True((result.Result as OkObjectResult)?.Value as bool?);
        }

        //[TestMethod()]
        [Fact]
        public void SaveReservationTestShouldFail()
        {
            Reservation example = new Reservation();
            string message = "Error while saving reservation";
            reservationService.Setup(service => service.SaveReservation(example)).Throws(new Exception(message));
            ReservationController controller = new ReservationController(reservationService.Object);
            ActionResult<bool> result = controller.SaveReservation(example);
            //Assert.AreEqual(message,((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
            Assert.Equal(message, ((result.Result as ObjectResult)?.Value as ProblemDetails)?.Detail as string);
        }
    }
}