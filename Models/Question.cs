using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("question")]
    [PrimaryKey(nameof(EventId), nameof(QuestionId))]
    public class Question
    {
        [Key,ForeignKey(nameof(Event)), Column("event_id")]
        public long EventId { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("question_id")]
        public long QuestionId { get; set; }

        [Required]
        [Column("text")]
        public string Text { get; set; }

        [Required]
        [ForeignKey(nameof(QuestionType))]
        [Column("question_type_id")]
        public long QuestionTypeId { get; set; }

        //Notation relationships
        public QuestionType QuestionTypeInstance { get; set; }


        [JsonIgnore]
        public Event EventInstance { get; set; }


        [NotMapped]
        public List<Answer> Answers { get; set; }
    }
}
