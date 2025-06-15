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
        [Key, Column("reservation_id")]
        public long ReservationId { get; set; } = 0;
        [Key, ForeignKey(nameof(Product))]
        [Column("product_id")]
        public long ProductId { get; set; } = 0;
        [Key, ForeignKey(nameof(Company))]
        [Column("pib"), Range(minimum: 10000001, maximum: 99999999, ErrorMessage = "PIB is not valid.")]
        public long PIB { get; set; } = 0;
        [Required]
        [Column("amount")]
        public int Amount { get; set; } = 0;
        [Required]
        [Column("delivery")]
        public DateTime? Delivery { get; set; }

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
