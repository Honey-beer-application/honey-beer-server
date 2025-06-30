using honey_beer_server_app.Models;
using honey_beer_server_app.Repositories.DBContextNamespace;
using Microsoft.EntityFrameworkCore.Storage;
using Serilog;

namespace honey_beer_server_app.Repositories
{
    public class QRCodeRepository
    {
        private readonly DBContext _context;
        private readonly ILogger<QRCodeRepository> logger;

        public QRCodeRepository(DBContext context, ILogger<QRCodeRepository> logger)
        {
            _context = context;
            this.logger = logger;
        }

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
            catch (Exception e)
            {
                logger.LogError(500, e.Message, e.StackTrace);
                transation.Rollback();
                throw;
            }
        }
    }
}
