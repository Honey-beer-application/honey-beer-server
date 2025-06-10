using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("location")]
    public class Location
    {
        [Key]
        [Column("location_id")]
        public long LocationId { get; set; }
        [Required]
        [Column("location_name")]
        public string LocationName { get; set; } = string.Empty;

        [Required]
        [Column("phone")]
        public string Phone { get; set; } = string.Empty;

        [Required]
        [Column("email")]
        public string Email { get; set; } = string.Empty;
    }
}
