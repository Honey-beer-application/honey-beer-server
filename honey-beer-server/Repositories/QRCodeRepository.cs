using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;

namespace honey_beer_server_app.Repositories
{
    public class QRCodeRepository
    {
        private readonly DBContext _context;

        public QRCodeRepository(DBContext context) => _context = context;

        public bool SaveQRCode(QRCode qrCode)
        {
            IDbContextTransaction transation = _context.Database.BeginTransaction();
            try
            {
                qrCode.QRCodeId = (from qrCod in _context.QRCode where qrCod.Code.Equals(qrCode.Code) select qrCod.QRCodeId).First();
                qrCode.ScannedByCustomerInstance = new ScannedByCustomer
                {
                    QRCodeId = qrCode.QRCodeId,
                    CustomerId = qrCode.ScannedBy.CustomerId
                };
                _context.ScannedByCustomer.Add(qrCode.ScannedByCustomerInstance);
                _context.SaveChanges();
                transation.Commit();
                return true;
            }
            catch (Exception)
            {
                transation.Rollback();
                throw;
            }
        }
    }
}
