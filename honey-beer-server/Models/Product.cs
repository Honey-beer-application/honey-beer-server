using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("product")]
    [PrimaryKey(nameof(ProductId))]
    public class Product
    {
        [Key]
        [Column("product_id"), DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public long ProductId { get; set; }

        [Required]
        [Column("name")]
        public string Name { get; set; } = string.Empty;

        [Required]
        [Column("description")]
        public string Description { get; set; } = string.Empty;


        //Notation relationships
        [NotMapped]
        [JsonIgnore]
        public List<Reservation>? Reservations { get; set; }

        [NotMapped]
        [JsonIgnore]
        public List<Discount>? Discounts { get; set; }
        [JsonIgnore]
        public List<Offer>? OfferInstance { get; set; }
        public List<ProductInLocation>? LocationsForProduct { get; set; }
    }
}
