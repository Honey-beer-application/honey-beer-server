using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("scanned_by")]
    [PrimaryKey(nameof(QRCodeId),nameof(CustomerId))]
    [Index(nameof(QRCodeId), IsUnique =true)]
    [Index(nameof(CustomerId),IsUnique =false)]
    public class ScannedByCustomer
    {
        [Key, ForeignKey(nameof(QRCode.QRCodeId))]
        [Column("qr_code_id")]
        public long QRCodeId { get; set; } = 0;


        [Key, ForeignKey(nameof(Customer.CustomerId))]
        [Column("sutomer_id")]
        public long CustomerId { get; set; } = 0;
    }
}
