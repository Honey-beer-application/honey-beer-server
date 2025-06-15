using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Repositories
{
    public class ReservationRepository
    {
        private readonly DBContext _context;

        public ReservationRepository(DBContext context) => _context = context;

        public IEnumerable<Reservation> LoadAllReservations()
        {
            return _context.Reservation.Include(reservation => reservation.ProductInstance).Include(reservation => reservation.CompanyInstance);
        }

        public IEnumerable<Reservation> SelectReservations(Reservation reservation)
        {
            IQueryable<Reservation> result = _context.Reservation.Include(reservation => reservation.ProductInstance).Include(reservation => reservation.CompanyInstance);

            if (reservation.PIB >= 10000001 && reservation.PIB <= 99999999)
                result = _context.Reservation.Where(r => r.PIB == reservation.PIB);

            if (reservation.ProductId > 0)
                result = result.Where(r => r.ProductId == reservation.ProductId);

            if (reservation.IsAmountValid())
                result = result.Where(r => r.Amount == reservation.Amount);

            if (reservation.IsDeliveryValid() && reservation.Delivery!=null)
                result = result.Where(r => r.Delivery != null && DateTime.Compare((DateTime)r.Delivery, (DateTime)reservation.Delivery) == 0);

            return result;
        }

        public bool SaveReservation(Reservation reservation)
        {
            if (!reservation.IsReservationValid())
                return false;
            
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                if (reservation.ProductInstance != null) reservation.ProductInstance = null;
                if (reservation.CompanyInstance != null) reservation.CompanyInstance = null;
                _context.Reservation.Add(reservation);
                _context.SaveChanges();
                transaction.Commit();
                return true;
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
        }
    }
}
