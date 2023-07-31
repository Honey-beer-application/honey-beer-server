using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Reservations
{
    public class SaveReservation
    {
        private readonly DBContext _context;

        public SaveReservation(DBContext context) => _context = context;

        public bool ExecuteFunction(Reservation reservation)
        {
            if (!reservation.IsReservationValid())
                return false;
            bool created = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                _context.Reservation.Add(reservation);
                _context.SaveChanges();
                transaction.Commit();
                created = true;
            }catch (Exception) 
            {
                transaction.Rollback();
            }
            return created;
        }
    }
}
