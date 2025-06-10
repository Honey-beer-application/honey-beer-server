using honey_beer_server_app.Models;
using honey_beer_server_app.Services.QRCodeService;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace honey_beer_server_app.Controllers
{
    [EnableCors("MySpecificOrigins")]
    [ApiController]
    [Route("api/[controller]")]
    public class QRCodeController : ControllerBase
    {
        private readonly IQRCodeService _qrCodeService;
        public QRCodeController(IQRCodeService qRCodeService) => _qrCodeService = qRCodeService;
        [HttpPost]
        public ActionResult<bool> SaveQRCode(QRCode qrCode)
        {
            try
            {
                return Ok(_qrCodeService.SaveQRCode(qrCode));
            }
            catch (Exception ex)
            {
                return Problem(ex.Message, title: "Problem while saving QR code");
            }
        }
    }
}
