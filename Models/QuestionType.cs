using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("question_type")]
    [PrimaryKey(nameof(QuestionTypeId))]
    public class QuestionType
    {
        [Key]
        [Column("question_type_id")]
        public long QuestionTypeId { get; set; } = 0;
        [Required]
        [Column("name")]
        public string Name { get; set; } = string.Empty;
    }
}
