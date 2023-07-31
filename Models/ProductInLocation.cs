using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("product_in_location")]
    [PrimaryKey(nameof(PIB),nameof(ShoppingLocationId),nameof(ProductId))]
    public class ProductInLocation
    {
        [Key,ForeignKey(nameof(ShoppingLocation.PIB))]
        [Column("pib")]
        public long PIB { get; set; }


        [Key,ForeignKey(nameof(ShoppingLocation.ShoppingLocationId))]
        [Column("shopping_location_id")]
        public long ShoppingLocationId { get; set; }


        [Key,ForeignKey(nameof(Product.ProductId))]
        [Column("product_id")]
        public long ProductId { get; set; }


        public ShoppingLocation ShoppingLocationInstance { get; set; }

        [NotMapped]
        public Product ProductInstance { get; set; }
    }
}
