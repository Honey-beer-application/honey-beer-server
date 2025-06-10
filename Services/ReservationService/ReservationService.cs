using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.ReservationService
{
    public class ReservationService : IReservationService
    {
        private readonly ReservationRepository _repository;

        public ReservationService(ReservationRepository repository) => _repository = repository;

        public IEnumerable<Reservation> LoadAllReservations() => _repository.LoadAllReservations();

        public IEnumerable<Reservation> SelectReservations(Reservation reservation) => _repository.SelectReservations(reservation);

        public bool SaveReservation(Reservation reservation) => _repository.SaveReservation(reservation);
    }
}
