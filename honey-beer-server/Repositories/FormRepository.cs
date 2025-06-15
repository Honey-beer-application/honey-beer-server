using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Repositories
{
    public class FormRepository
    {
        private readonly DBContext _context;

        public FormRepository(DBContext context) => _context = context;

        public bool Createform(Event eventForm)
        {
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                Form form = new ();
                _context.Form.Add(form);
                eventForm.EventTypeInstance = null;
                List<Question>? questions = eventForm.Questions;
                eventForm.Questions = null;
                _context.Event.Add(eventForm);
                _context.SaveChanges();
                questions?.ForEach(question =>
                {
                    QuestionType questionType = question.QuestionTypeInstance;
                    question.QuestionTypeInstance = null;
                    question.EventId = eventForm.EventId;
                    _context.Question.Add(question);
                    _context.SaveChanges();
                    question.Answers.ForEach(answer =>
                    {
                        answer.EventId = eventForm.EventId;
                        answer.QuestionId = question.QuestionId;
                        _context.Answer.Add(answer);
                        _context.SaveChanges();
                        CustomerAnswer ca = new CustomerAnswer();
                        ca.AnswerId = answer.AnswerId;
                        ca.QuestionId = question.QuestionId;
                        ca.EventId = eventForm.EventId;
                        ca.FormId = form.FormId;
                        ca.Form = form;
                        ca.Date = DateTime.Now;
                        _context.CustomerAnswer.Add(ca);
                        _context.SaveChanges();
                        if (questionType.Name.Equals("Text"))
                        {
                            ca.TextCustomerAnswer = new TextCustomerAnswer();
                            ca.TextCustomerAnswer.Text = answer.Value;
                            ca.TextCustomerAnswer.EventId = eventForm.EventId;
                            ca.TextCustomerAnswer.AnswerId = answer.AnswerId;
                            ca.TextCustomerAnswer.QuestionId = question.QuestionId;
                            ca.TextCustomerAnswer.FormId = form.FormId;
                            ca.Form = form;
                            ca.Answer = answer;
                            ca.CustomerId = answer.CustomerAnswers?[0].CustomerId;
                            ca.Customer = answer.CustomerAnswers?[0].Customer;
                            if (answer.CustomerAnswers != null) { 
                                answer.CustomerAnswers[0].EventId = eventForm.EventId;
                                ca.EventId = answer.CustomerAnswers[0].EventId;
                            }
                            _context.TextCustomerAnswer.Add(ca.TextCustomerAnswer);
                            _context.SaveChanges();
                        }
                        
                    });
                });
                eventForm?.Questions?.ForEach(q => q.QuestionTypeInstance = null);
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
