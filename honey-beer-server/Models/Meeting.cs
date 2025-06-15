using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using honey_beer_server_app.Models.Validation;

namespace honey_beer_server_app.Models
{
    [Table("meeting")]
    [PrimaryKey(nameof(MeetingId))]
    public class Meeting
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("meeting_id")]
        public long MeetingId { get; set; } = 0;

        [Required]
        [Column("subject")]
        public string Subject { get; set; } = string.Empty;

        [Required,MeetingValidation]
        [Column("start_time")]
        public DateTime StartTime { get; set; } = DateTime.Now;

        [Required]
        [Column("end_time")]
        public DateTime EndTime { get; set; } = DateTime.Now;

        [Required]
        [Column("location")]
        public string Location { get; set; } = string.Empty;

        [ForeignKey(nameof(CompanyInstance)), Range(minimum: 10000001, maximum: 99999999, ErrorMessage = "PIB is not valid.")]
        [Column("pib")]
        public long? PIB { get; set; }

        [JsonIgnore]
        public Company? CompanyInstance { get; set; }
    }
}
