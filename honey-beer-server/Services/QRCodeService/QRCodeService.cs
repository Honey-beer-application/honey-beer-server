using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories;

namespace honey_beer_server_app.Services.QRCodeService
{
    public class QRCodeService: IQRCodeService
    {
        private readonly QRCodeRepository _qrCodeRepository;

        public QRCodeService(QRCodeRepository qrCodeRepository) => _qrCodeRepository = qrCodeRepository;

        public bool SaveQRCode(QRCode qrCode) => _qrCodeRepository.SaveQRCode(qrCode);
    }
}
