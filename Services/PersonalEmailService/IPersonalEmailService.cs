using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.PersonalEmailService
{
    public interface IPersonalEmailService
    {
        public bool SendEmail(SentPersonalEmail email);
    }
}
