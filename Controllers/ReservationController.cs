using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [Route("api/[controller]")]
    [ApiController]
    public class ReservationController : ControllerBase
    {
        private readonly IDBBrocker _brocker;

        public ReservationController(IDBBrocker brocker) => _brocker = brocker;
        [HttpGet]
        [Route("getAllReservations")]
        public ActionResult<IEnumerable<Reservation>> LoadAllReservations()
        {
            return Ok(_brocker.LoadAllReservations());
        }
        [HttpPost]
        [Route("selectReservations")]
        public ActionResult<IEnumerable<Reservation>> SelectReservations(Reservation reservation)
        {
            return Ok(_brocker.SelectReservations(reservation));
        }
        [HttpPost]
        [Route("saveReservation")]
        public ActionResult<bool> SaveReservation(Reservation reservation)
        {
            bool saved = _brocker.SaveReservation(reservation);
            return saved ? Ok(saved) : 
                Problem(saved.ToString(), title: "Error while savimg reservation.");
        }
    }
}
