using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("reservation")]
    [PrimaryKey(nameof(ReservationId), nameof(ProductId), nameof(PIB))]
    public class Reservation
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key,Column("reservation_id")]
        public long ReservationId { get; set; }
        [Key,ForeignKey(nameof(Product))]
        [Column("product_id")]
        public long ProductId { get; set; }
        [Key,ForeignKey(nameof(Company))]
        [Column("pib")]
        public long PIB { get; set; }
        [Required]
        [Column("amount")]
        public int Amount { get; set; }
        [Required]
        [Column("delivery")]
        public DateTime? Delivery { get; set; } = null;

        public Product? ProductInstance { get; set; }
        [JsonIgnore]
        public Company? CompanyInstance { get; set; }
        public bool IsAmountValid()
        {
            return this.Amount > 0;
        }
        public bool IsDeliveryValid()
        {
            return Delivery != null && DateTime.Compare(DateTime.Now, (DateTime)Delivery) <= 0;
        }

        public bool IsReservationValid()
        {
            return IsDeliveryValid() && IsAmountValid();
        }
    }
    
}
