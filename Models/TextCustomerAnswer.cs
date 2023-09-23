using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("text_customer_answer")]
    [PrimaryKey(nameof(EventId), nameof(QuestionId), nameof(AnswerId), nameof(FormId))]
    public class TextCustomerAnswer
    {
        [Key, Column("event_id"), ForeignKey(nameof(CustomerAnswer.EventId))]
        public long EventId { get; set; }

        [Key, Column("question_id"), ForeignKey(nameof(CustomerAnswer.QuestionId))]
        public long QuestionId { get; set; }

        [Key, Column("answer_id"), ForeignKey(nameof(CustomerAnswer.AnswerId))]
        public long AnswerId { get; set; }

        [Key, Column("form_id"), ForeignKey(nameof(CustomerAnswer.FormId))]
        public long FormId { get; set; }

        [Required]
        [Column("text")]
        public string Text { get; set; }



        //Notation relationships
        [JsonIgnore] public CustomerAnswer? CustomerAnswerInstance { get; set; } = new CustomerAnswer();

    }
}
