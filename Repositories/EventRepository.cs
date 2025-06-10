using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;

namespace honey_beer_server_app.Repositories
{
    public class EventRepository
    {
        private readonly DBContext _context;

        public EventRepository(DBContext context) => _context = context;

        public IEnumerable<Event> LoadAllEvents()
        {
            return from e in _context.Event
                   join eventType in _context.EventType
                   on e.EventTypeId equals eventType.EventTypeId
                   where eventType.Name.Equals("Survey") && DateTime.Compare(e.BeginDate, DateTime.Now) <= 0 && DateTime.Compare(e.EndDate, DateTime.Now) >= 0
                   select new Event()
                   {
                       CreationDate = e.CreationDate,
                       Description = e.Description,
                       EventId = e.EventId,
                       EventTypeId = e.EventTypeId,
                       Title = e.Title,
                       Questions = (from question in _context.Question
                                    join questionType in _context.QuestionType on question.QuestionTypeId equals questionType.QuestionTypeId
                                    select new Question()
                                    {
                                        QuestionId = question.QuestionId,
                                        EventId = question.EventId,
                                        QuestionTypeId = question.QuestionTypeId,
                                        QuestionTypeInstance = new QuestionType()
                                        {
                                            QuestionTypeId = questionType.QuestionTypeId,
                                            Name = questionType.Name
                                        },
                                        Text = question.Text,
                                        Answers = _context.Answer.Where(answer => answer.QuestionId == question.QuestionId && answer.EventId == question.EventId).ToList()
                                    }).ToList(),
                       EventTypeInstance = new EventType()
                       {
                           EventTypeId = eventType.EventTypeId,
                           Name = eventType.Name
                       },
                   };
        }
    }
}
