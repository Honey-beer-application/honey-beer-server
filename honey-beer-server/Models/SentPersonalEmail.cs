using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using System.Text.RegularExpressions;

namespace honey_beer_server_app.Models
{
    [Table("sent_personal_email")]
    [PrimaryKey(nameof(Email),nameof(SentPersonalEmailId))]
    public class SentPersonalEmail
    {
        [Key, ForeignKey(nameof(PersonalEmailInstance)), Column("email")]
        public string Email { get; set; } = string.Empty;


        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("sent_personal_email_id")]
        public long SentPersonalEmailId { get; set; } = 0;


        [Required]
        [Column("date_and_time")]
        public DateTime DateAndTime { get; set; } = DateTime.Now;
        public bool IsSentPersonalEmailValid()
        {
            Regex _emailRegex = new("^\\S+@\\S+\\.\\S+$");
            return _emailRegex.IsMatch(Email);
        }
        public PersonalEmail PersonalEmailInstance { get; set; } = new PersonalEmail();
    }
}
