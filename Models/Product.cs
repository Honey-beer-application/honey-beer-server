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
        [Column("product_id")]
        public long ProductId { get; set; }

        [Required]
        [Column("name")]
        public string name { get; set; }

        [Required]
        [Column("description")]
        public string description { get; set; }


        //Notation relationships
        [NotMapped]
        [JsonIgnore]
        public List<Reservation>? reservations { get; set; }

        [NotMapped]
        [JsonIgnore]
        public List<Discount>? discounts { get; set; }
        [JsonIgnore]
        public List<Offer>? OfferInstance { get; set; }
        public List<ProductInLocation>? LocationsForProduct { get; set; }
    }
}
