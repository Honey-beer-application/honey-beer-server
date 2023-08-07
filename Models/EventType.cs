using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("event_type")]
    public class EventType
    {
        [Key]
        [Column("event_type_id")]
        public long EventTypeId { get; set; }
        [Required]
        [Column("name")]
        public string Name { get; set; }

        //navigation properties
        [NotMapped]
        [JsonIgnore]
        public List<Event>? Events { get; set; }
    }
}
