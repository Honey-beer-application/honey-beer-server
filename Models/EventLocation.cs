using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("event_location")]
    [PrimaryKey(nameof(EventId), nameof(EventLocationId))]
    public class EventLocation
    {
        [Key, ForeignKey(nameof(Event.EventId))]
        [Column("event_id")]
        public long EventId { get; set; }


        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("event_location_id")]
        public long EventLocationId { get; set; }


        [Required]
        [Column("location")]
        public string Location { get; set; } = string.Empty;

        public Event EventInstance { get; set; } = new Event();
    }
}
