using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("discount")]
    [PrimaryKey(nameof(PIB), nameof(ShoppingLocationId), nameof(ProductId))]
    public class Discount
    {
        [Key,ForeignKey(nameof(ShoppingLocation)), Column("pib")]
        public long PIB { get; set; }
        [Key,ForeignKey(nameof(ShoppingLocation)), Column("shopping_location_id")]
        public long ShoppingLocationId { get; set; }
        [Key, ForeignKey(nameof(Product)), Column("product_id")]
        public long ProductId { get; set; }
        [Required]
        [Column("percentage")]
        public int Percentage { get; set; }
        [Required]
        [Column("begin_date")]
        public DateTime BeginDate { get; set; }
        [Required]
        [Column("end_date")]
        public DateTime EndDate { get; set; }
        
        public ShoppingLocation ShoppingLocationInstance { get; set; }
        
        public Product ProductInstance { get; set; }

    }
}
