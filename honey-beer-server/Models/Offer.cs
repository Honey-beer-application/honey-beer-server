using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using honey_beer_server_app.Models.Validation;

namespace honey_beer_server_app.Models
{
    [Table("offer")]
    [PrimaryKey(nameof(ProductId), nameof(OfferId))]
    public class Offer
    {
        [Key]
        [ForeignKey(nameof(ProductInstance))]
        [Column("product_id")]
        public long ProductId { get; set; } = 0;

        [Key, Column("offer_id"), DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public long OfferId { get; set; } = 0;

        [Required]
        [Column("amount"), Range(0,int.MaxValue,ErrorMessage = "Please enter positive value.")]
        public int Amount { get; set; } = 0;

        [Required]
        [Column("begin_date")]
        public DateTime BeginDate { get; set; } = DateTime.Now;

        [Required]
        [Column("end_date"), OfferEndDateValidation]
        public DateTime EndDate { get; set; } = DateTime.Now;

        //Notation relationships
        public Product? ProductInstance { get; set; }

        [JsonIgnore]
        public List<OfferByCompany>? OffersByCompanies { get; set; }
        public bool IsOfferValid()
        {
            return IsBeginDateBeforeEndDate();
        }


        private bool IsBeginDateBeforeEndDate()
        {
            int result = DateTime.Compare(BeginDate, EndDate);
            return result < 0;
        }

    }
}
