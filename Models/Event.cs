
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("event")]
    [PrimaryKey(nameof(EventId))]
    public class Event
    {
        [Key]
        [Column("event_id")]
        public long EventId { get; set; } = 0;

        [Required]
        [Column("title")]
        public string Title { get; set; } = "";

        [Required]
        [Column("description")]
        public string Description { get; set; } = "";

        [Required]
        [Column("creation_date")]
        public DateTime CreationDate { get; set; } = DateTime.Now;

        [Column("begin_date")]
        public DateTime BeginDate { get; set; } = DateTime.Now;

        [Column("end_date")]
        public DateTime EndDate { get; set; } = DateTime.Now;

        [Required]
        [ForeignKey(nameof(EventTypeInstance))]
        [Column("event_type_id")]
        public long EventTypeId { get; set; } = 0;

        //Navigation properties
        /*[JsonIgnore]*/
        public EventType? EventTypeInstance { get; set; }
        /*[NotMapped]
        [JsonIgnore]*/
        public List<Question>? Questions { get; set; }

        public List<EventLocation>? EventLocations { get; set; }
    }
}
