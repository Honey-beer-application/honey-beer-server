using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Meetings
{
    public class UpdateMeeting
    {
        private readonly DBContext _context;

        public UpdateMeeting(DBContext context) => _context = context;

        public bool ExecuteFunction(Meeting meeting)
        {
            if (!meeting.IsMeetingValid())
                return false;
            bool created = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                meeting.CompanyInstance = null;
                // _context.Database.ExecuteSqlRaw("SET IDENTITY_INSERT dbo.meeting ON;");
                _context.Update(meeting);
                _context.SaveChanges();
                transaction.Commit();
                created = true;
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
            return created;
        }
    }
}
