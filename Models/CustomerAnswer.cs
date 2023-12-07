using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("customer_answer")]
    [PrimaryKey(nameof(EventId),nameof(QuestionId),nameof(AnswerId), nameof(FormId))]
    public class CustomerAnswer
    {
        [Key, ForeignKey(nameof(Models.Answer.EventId)), Column("event_id")]
        public long EventId { get; set; }

        [Key, ForeignKey(nameof(Models.Answer.QuestionId)), Column("question_id")]
        public long QuestionId { get; set; }

        [Key, ForeignKey(nameof(Models.Answer.AnswerId)), Column("answer_id")]
        public long AnswerId { get; set; }

        [Key, ForeignKey(nameof(Models.Form)), Column("form_id")]
        public long FormId { get; set; }
        [Required]
        [Column("date")]
        public DateTime Date { get; set; }
        [ForeignKey(nameof(Models.Customer))]
        [Column("customer_id")]
        public long? CustomerId { get; set; }

        //Notation relationships
        
        [JsonIgnore]
        public Answer? Answer { get; set; } = null;

        [JsonIgnore]
        public Form? Form { get; set; } = null;

        [JsonIgnore]
        public Customer? Customer { get; set; } = null;

        [JsonIgnore,NotMapped]
        public TextCustomerAnswer? TextCustomerAnswer { get; set; } = null;

    }
}
