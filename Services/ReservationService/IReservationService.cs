using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.ReservationService
{
    public interface IReservationService
    {
        public IEnumerable<Reservation> LoadAllReservations();
        public IEnumerable<Reservation> SelectReservations(Reservation reservation);
        public bool SaveReservation(Reservation reservation);

    }
}
