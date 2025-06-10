using System.ComponentModel.DataAnnotations;

namespace honey_beer_server_app.Models.Validation
{
    public class OfferEndDateValidationAttribute : ValidationAttribute
    {
        protected override ValidationResult? IsValid(object? value, ValidationContext validationContext)
        {

            return value!=null && DateTime.Compare((DateTime) value, DateTime.Now) > 0 ? ValidationResult.Success : new ValidationResult("Meeting is not scheduled minimum 5 days upfront");
        }
    }
}
