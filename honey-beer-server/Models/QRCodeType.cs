using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("qr_code_type")]
    [PrimaryKey(nameof(QRCodeTypeId))]
    public class QRCodeType
    {
        [Key]
        [Column("qr_code_type_id")]
        public long QRCodeTypeId { get; set; } = 0;
        [Required]
        [Column("qr_code_type_name")]
        public string QRCodeTypeName { get; set; } = string.Empty;
    }
}
