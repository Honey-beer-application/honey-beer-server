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
        [Column("pib")]
        public long PIB { get; set; }
        [Required]
        [Column("name")]
        public string Name { get; set; }
        [Required]
        [Column("email")]
        public string Email { get; set; }
        [Required]
        [Column("password")]
        public string Password { get; set; }
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
        private bool IsPIBValid()
        {
            return PIB >= 10000001 & PIB <= 99999999;
        }
        private bool IsEmailValid()
        {
            Regex _emailRegex = new("^\\S+@\\S+\\.\\S+$");
            return _emailRegex.IsMatch(this.Email);
        }
        public bool IsCompanyValid()
        {
            List<string> messages = new List<string>();
            if (!IsPIBValid())
                messages.Add("PIB is not valid.\n");
            if (Email == null)
                messages.Add("Email doesn't exist.\n");
            else
            if (!IsEmailValid())
                messages.Add("Email is not valid.\n");
            if (messages.Count > 0)
            {
                string message = "";
                foreach (string line in messages)
                {
                    message += line;
                }
                throw new Exception(message);
            }
            return IsPIBValid() && IsEmailValid();
        }
    }
}
