using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("meeting")]
    [PrimaryKey(nameof(MeetingId))]
    public class Meeting
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("meeting_id")]
        public long MeetingId { get; set; }

        [Required]
        [Column("subject")]
        public string Subject { get; set; }

        [Required]
        [Column("start_time")]
        public DateTime StartTime { get; set; }

        [Required]
        [Column("end_time")]
        public DateTime EndTime { get; set; }

        [Required]
        [Column("location")]
        public string Location { get; set; }

        [ForeignKey(nameof(CompanyInstance))]
        [Column("pib")]
        public long? PIB { get; set; }

        [JsonIgnore]
        public Company? CompanyInstance { get; set; }

        internal bool IsMeetingValid()
        {
            return (StartTime - DateTime.Now).Days >= 5;
        }
    }
}
