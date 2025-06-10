using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics.CodeAnalysis;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("form")]
    [PrimaryKey(nameof(FormId))]
    public class Form
    {

        [Key, Column("form_id")]
        public long FormId { get; set; } = 0;

        [Required]
        [Column("creation_date")]
        public DateTime CreationDate { get; set; } = DateTime.Now;

        [ForeignKey(nameof(QRCodeInstance))]
        [Column("qr_code_id")]
        public long? QRCodeId { get; set; }

        //Notation relationships
        
        [JsonIgnore]
        public QRCode? QRCodeInstance { get; set; }

        [JsonIgnore]
        public List<CustomerAnswer>? CustomerAnswers { get; set; }
    }
}
