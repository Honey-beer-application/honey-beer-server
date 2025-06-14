﻿using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("answer")]
    [PrimaryKey(nameof(EventId), nameof(QuestionId), nameof(AnswerId))]
    [Index(nameof(AnswerId))]
    public class Answer
    {
        [Key, ForeignKey(nameof(Question)), Column("event_id")]
        public long EventId { get; set; } = 0;

        [Key, ForeignKey(nameof(Question)), Column("question_id")]
        public long QuestionId { get; set; } = 0;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("answer_id")]
        public long AnswerId { get; set; } = 0;
        [Required]
        [Column("value")]
        public string Value { get; set; } = "";

        //Notation relationships
        [NotMapped]
        [JsonIgnore]
        public List<CustomerAnswer>? CustomerAnswers { get; set; }

        [JsonIgnore]
        public Question? EventQuestion { get; set; }
    }
}
