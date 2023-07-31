using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Models
{
    [Table("offer")]
    [PrimaryKey(nameof(ProductId), nameof(OfferId))]
    public class Offer
    {
        [Key]
        [ForeignKey(nameof(ProductInstance))]
        [Column("product_id")]
        public long ProductId { get; set; }

        [Key]
        [Column("offer_id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public long OfferId { get; set; }

        [Required]
        [Column("amount")]
        public int Amount { get; set; }

        [Required]
        [Column("begin_date")]
        public DateTime BeginDate { get; set; }

        [Required]
        [Column("end_date")]
        public DateTime EndDate { get; set; }

        //Notation relationships
        public Product? ProductInstance { get; set; }

        [JsonIgnore]
        public List<OfferByCompany>? OffersByCompanies { get; set; }
        public bool IsOfferValid()
        {
            return  IsAmountPositiveNumber() &&
                    IsBeginDateBeforeEndDate() &&
                    IsEndDateAfterCurrentDate();
        }
        private bool IsEndDateAfterCurrentDate()
        => DateTime.Compare(EndDate, new DateTime()) > 0;


        private bool IsBeginDateBeforeEndDate()
        => DateTime.Compare(BeginDate, EndDate) < 0;

        private bool IsAmountPositiveNumber()
        => Amount >= 0;

    }
}
