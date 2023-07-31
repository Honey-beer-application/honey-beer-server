using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("event_location")]
    [PrimaryKey(nameof(EventId))]
    public class EventLocation
    {
        [Key,ForeignKey(nameof(Event.EventId))]
        [Column("event_id")]
        public long EventId { get; set; }

        [Required]
        [Column("location")]
        public string Location { get; set; }

        [NotMapped]
        public Event EventInstance { get; set; }
    }
}
