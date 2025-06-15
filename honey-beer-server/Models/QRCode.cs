using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("qr_code")]
    public class QRCode
    {
        [Key]
        [Column("qr_code_id")]
        public long QRCodeId { get; set; } = 0;

        [Required]
        [Column("code")]
        public string Code { get; set; } = string.Empty;

        [Required, ForeignKey(nameof(QRCodeType.QRCodeTypeId))]
        [Column("qr_code_type_id")]
        public long QRCodeTypeId { get; set; } = 0;


        [NotMapped]
        [JsonIgnore]
        public Form? Form { get; set; }

        [JsonIgnore]
        public QRCodeType? QRCodeTypeInstance { get; set; }

        [JsonIgnore]
        public ScannedByCustomer? ScannedByCustomerInstance { get; set; }

        [NotMapped]
        public Customer ScannedBy { get; set; } = new Customer();
    }
}
