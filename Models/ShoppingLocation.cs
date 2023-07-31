using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("shopping_location")]
    [PrimaryKey(nameof(PIB), nameof(ShoppingLocationId))]
    public class ShoppingLocation
    {
        [Key, ForeignKey(nameof(CompanyInstance)), Column("pib")]
        public long PIB { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key,Column("shopping_location_id")]
        public long ShoppingLocationId { get; set; }
        [Required]
        [Column("location")]
        public string Location { get; set; }


        [JsonIgnore]
        public List<Discount> Discounts { get; set; }


        public Company CompanyInstance { get; set; }

        [JsonIgnore]
        public List<ProductInLocation> ProductsInLocationInstance { get; set; }

        [NotMapped]
        public List<Product> ProductsInLocation { get; set; }
    }
}
