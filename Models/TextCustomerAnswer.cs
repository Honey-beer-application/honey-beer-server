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
        [Key,ForeignKey(nameof(CustomerAnswer)), Column("event_id")]
        public long EventId { get; set; }

        [Key, ForeignKey(nameof(CustomerAnswer)), Column("question_id")]
        public long QuestionId { get; set; }
  
        [Key, ForeignKey(nameof(CustomerAnswer)), Column("answer_id")]
        public long AnswerId { get; set; }
  
        [Key, ForeignKey(nameof(CustomerAnswer)), Column("form_id")]
        public long FormId { get; set; }
        [Required]
        [Column("text")]
        public string Text { get; set; }


        //Notation relationships
        [JsonIgnore] public CustomerAnswer CustomerAnswerInstance { get; set; } = new CustomerAnswer();

    }
}
