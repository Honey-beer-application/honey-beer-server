using System.ComponentModel.DataAnnotations;

namespace honey_beer_server_app.Models.Validation
{
    public class MeetingValidationAttribute : ValidationAttribute
    {
        
        protected override ValidationResult? IsValid(object? value, ValidationContext validationContext)
        {
            return value!= null && ((DateTime) value - DateTime.Now).Days >= 5? ValidationResult.Success : new ValidationResult("Meeting is not scheduled minimum 5 days upfront");
        }

    }
}
