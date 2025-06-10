using honey_beer_server_app.Models;

namespace honey_beer_server_app.Services.QRCodeService
{
    public interface IQRCodeService
    {
        public bool SaveQRCode(QRCode qrCode);
    }
}
