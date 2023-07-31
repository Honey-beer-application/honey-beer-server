using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("meeting")]
    [PrimaryKey(nameof(PIB), nameof(MeetingId))]
    public class Meeting
    {
        [Key, ForeignKey(nameof(CompanyInstance))]
        [Column("pib")]
        public long PIB { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("meeting_id")]
        public long MeetingId { get; set; }

        [Required]
        [Column("date_and_time")]
        public DateTime DateAndTime { get; set; }

        [JsonIgnore]
        public Company? CompanyInstance { get; set; }

        internal bool IsMeetingValid()
        {
            return (DateAndTime - DateTime.Now).Days>=5;
        }
    }
}
