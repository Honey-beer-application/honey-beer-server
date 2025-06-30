using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;
using Serilog;

namespace honey_beer_server_app.Repositories
{
    public class MeetingRepository
    {
        private readonly DBContext _context;
        private readonly ILogger<MeetingRepository> logger;

        public MeetingRepository(DBContext context, ILogger<MeetingRepository> logger)
        {
            _context = context;
            this.logger = logger;
        }

        public bool UpdateMeeting(Meeting meeting)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                meeting.CompanyInstance = null;
                _context.Update(meeting);
                _context.SaveChanges();
                transaction.Commit();
                return true;
            }
            catch (Exception e)
            {
                logger.LogError(500, e.Message, e.StackTrace);
                transaction.Rollback();
                throw;
            }
        }

        public IEnumerable<Meeting> LoadAllAvailableMeetings() 
        { 
            return from meeting in _context.Meeting
                   join companyDB
                   in _context.Company on meeting.PIB equals companyDB.PIB
                   from c in _context.Company.DefaultIfEmpty()
                   where c == null && DateTime.Compare(DateTime.Now.AddDays(5), meeting.StartTime) <= 0
                   select new Meeting()
                   {
                       MeetingId = meeting.MeetingId,
                       StartTime = meeting.StartTime,
                       EndTime = meeting.EndTime,
                       Subject = meeting.Subject,
                       Location = meeting.Location,
                       CompanyInstance = c
                   };
        }
            
    }
}
