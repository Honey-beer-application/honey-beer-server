using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using System.Text.RegularExpressions;

namespace honey_beer_server_app.Models
{
    [Table("customer")]
    [Index(nameof(CustomerId))]
    public class Customer
    {
        [Key]
        [Column("customer_id")]
        public long CustomerId {get; set;}
        [Required]
        [Column("username")]
        public string Username { get; set;}
        [Required]
        [Column("password")]
        public string Password { get; set;}

        [Required]
        [ForeignKey(nameof(PersonalEmailInstance))]
        [Column("email")]
        public string Email { get; set; }


        public PersonalEmail PersonalEmailInstance { get; set; }

        [JsonIgnore]
        public ScannedByCustomer? ScannedByCustomerInstance { get; set; }
        public bool IsEmailValid()
        {
            Regex _emailRegex = new("^\\S+@\\S+\\.\\S+$");
            return _emailRegex.IsMatch(PersonalEmailInstance.Email);
        }

        public bool IsUsernameValid()
        {
            return Username.Length <= 50;
        }
        
        
    }
}
