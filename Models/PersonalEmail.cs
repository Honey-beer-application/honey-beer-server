using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics.CodeAnalysis;

namespace honey_beer_server_app.Models
{
    [Table("personal_email")]
    [PrimaryKey(nameof(Email))]
    public class PersonalEmail
    {
        [Key]
        [Column("email")]
        public string Email { get; set; }
    }
}
