using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Models
{
    [Table("offer_by_company")]
    [PrimaryKey(nameof(PIB),nameof(ProductId),nameof(OfferId))]
    public class OfferByCompany
    {
        [Key, ForeignKey(nameof(CompanyInstance)), Range(minimum: 10000001, maximum: 99999999, ErrorMessage = "PIB is not valid.")]
        [Column("pib")]
        public long PIB { get; set; } = 0;


        [Key, ForeignKey(nameof(Offer.ProductId))]
        [Column("product_id")]
        public long ProductId { get; set; } = 0;


        [Key, ForeignKey(nameof(Offer.OfferId))]
        [Column("offer_id")]
        public long OfferId { get; set; } = 0;



        public Company? CompanyInstance { get; set; }

        
        public Offer? OfferInstance { get; set; }
    }
}
