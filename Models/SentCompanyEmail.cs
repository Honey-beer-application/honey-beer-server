
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("sent_company_email")]
    [PrimaryKey(nameof(PIB), nameof(SentCompanyEmailId))]
    public class SentCompanyEmail
    {
        [Key, ForeignKey(nameof(CompanyInstance)), Column("pib")]
        public long PIB { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("sent_company_email_id")]
        public long SentCompanyEmailId { get; set; }
        [Required]
        [Column("date_and_time")]
        public DateTime DateAndTime { get; set; }


        [JsonIgnore]
        public Company? CompanyInstance { get; set; }
    }
}
