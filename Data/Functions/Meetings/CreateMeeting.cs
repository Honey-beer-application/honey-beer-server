using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Meetings
{
    public class CreateMeeting
    {
        private readonly DBContext _context;

        public CreateMeeting(DBContext context) => _context = context;

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
                _context.Add(meeting);
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
