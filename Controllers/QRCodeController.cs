using honey_beer_server_app.Data.DBBrocker.DBBrocker;
using honey_beer_server_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class QRCodeController : ControllerBase
    {
        private readonly IDBBrocker _database;
        public QRCodeController(IDBBrocker database) => this._database = database;
        [HttpPost]
        public IActionResult SaveQRCode(QRCode qrCode)
        {
            bool scanned = _database.SaveQRCode(qrCode);
            return scanned?Ok(scanned):Problem(scanned.ToString(),title:"Problem while saving QR code");
        }
    }
}
