using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Data.Functions.Forms
{
    public class SaveForm
    {
        private DBContext _context;

        public SaveForm(DBContext context) => _context = context;

        public bool ExecuteFunction(Event eventForm)
        {
            bool saved = false;
            IDbContextTransaction transaction = _context.Database.BeginTransaction();
            try
            {
                Form form = new Form();
                _context.Form.Add(form);
                _context.SaveChanges();
                eventForm.Questions.ForEach(question =>
                {
                    question.Answers.ForEach(answer => 
                    {
                        CustomerAnswer ca = new CustomerAnswer();
                        ca.AnswerId = answer.AnswerId;
                        ca.QuestionId = answer.QuestionId;
                        ca.EventId = answer.EventId;
                        ca.FormId = form.FormId;
                        ca.Form = form;
                        ca.Date = DateTime.Now;
                        if (question.QuestionTypeInstance.Name.Equals("Text"))
                        {
                           /* ca.TextCustomerAnswer = new TextCustomerAnswer();
                            ca.TextCustomerAnswer.Text = answer.Value;
                            ca.TextCustomerAnswer.EventId = ca.EventId;
                            ca.TextCustomerAnswer.AnswerId = ca.AnswerId;
                            ca.TextCustomerAnswer.QuestionId = ca.QuestionId;
                            ca.TextCustomerAnswer.FormId = form.FormId;
                            _context.TextCustomerAnswer.Add(ca.TextCustomerAnswer);*/
                        }
                        _context.CustomerAnswer.Add(ca);
                    });
                });
                _context.SaveChanges();
                transaction.Commit();
                saved = true;
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
           return saved;
        }
    }
}
