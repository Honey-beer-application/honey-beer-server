using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using System.Text.RegularExpressions;

namespace honey_beer_server_app.Models
{
    [Table("company")]
    [Index(nameof(PIB))]
    public class Company
    {
        [Key]
        [Column("pib"), Range(minimum:10000001, maximum:99999999,ErrorMessage = "PIB is not valid.")]
        public long PIB { get; set; }
        [Required]
        [Column("name")]
        public string Name { get; set; } = "";
        [Required]
        [Column("email"), RegularExpression(pattern: @"^\S+@\S+\.\S+$", ErrorMessage = "Company email is invalid.")]
        public string Email { get; set; } = "";
        [Required]
        [Column("password")]
        public string Password { get; set; } = "";
        //Notation relationships
        [NotMapped]
        [JsonIgnore]
        public List<Reservation> Reservations { get; set; } = new ();
        [JsonIgnore]
        public List<OfferByCompany> OffersByCompanies { get; set; } = new ();
        [NotMapped]
        [JsonIgnore]
        public List<ShoppingLocation> ShoppingLocations { get; set; } = new();
        [NotMapped]
        [JsonIgnore]
        public List<Meeting> meetings { get; set; } = new ();
        [NotMapped]
        [JsonIgnore]
        public List<SentCompanyEmail> sentCompanyEmails { get; set; } = new ();
    }
}
