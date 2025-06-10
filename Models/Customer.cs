using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.InteropServices;
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
        public long CustomerId { get; set; } = 0;

        [Required]
        [Column("username"), StringLength(maximumLength: 50, ErrorMessage = "Customer username has more than 50 characters.")]
        public string Username { get; set; } = string.Empty;

        [Required]
        [Column("password")]
        public string Password { get; set;} = string.Empty;

        [Required]
        [ForeignKey(nameof(PersonalEmailInstance))]
        [Column("email"), RegularExpression(pattern: @"^\S+@\S+\.\S+$", ErrorMessage = "Customer email is not correct.")]
        public string Email { get; set; } = "";


        public PersonalEmail PersonalEmailInstance { get; set; } = new PersonalEmail();

        [JsonIgnore]
        public ScannedByCustomer? ScannedByCustomerInstance { get; set; }
        
    }
}
