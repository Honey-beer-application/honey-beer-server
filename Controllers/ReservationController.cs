using honey_beer_server_app.Models;
using honey_beer_server_app.Services.ReservationService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    public class ReservationController : ControllerBase
    {
        private readonly IReservationService _reservationService;

        public ReservationController(IReservationService reservationService) => _reservationService = reservationService;
        [HttpGet]
        [Route("getAllReservations")]
        public ActionResult<List<Reservation>> LoadAllReservations()
        {
            return Ok(_reservationService.LoadAllReservations());
        }
        [HttpPost]
        [Route("selectReservations")]
        public ActionResult<List<Reservation>> SelectReservations(Reservation reservation)
        {
            return Ok(_reservationService.SelectReservations(reservation));
        }
        [HttpPost]
        [Route("saveReservation")]
        public ActionResult<bool> SaveReservation(Reservation reservation)
        {
            try
            {
                return Ok(_reservationService.SaveReservation(reservation));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Error while savimg reservation.");
            }
                
        }
    }
}
