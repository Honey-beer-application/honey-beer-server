using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.SentCompanyEmailService
{
    public interface ISentCompanyEmailService
    {
        public bool SaveEmail(SentCompanyEmail email);
    }
}
