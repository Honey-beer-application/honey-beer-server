using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations.Schema;

namespace honey_beer_server_app.Repositories.DBContextNamespace
{
    public class DBContext : DbContext
    {
        public DBContext(DbContextOptions<DBContext> options) : base(options)
        {

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<QRCode>()
                .HasIndex(x => x.Code)
                .IsUnique();
            modelBuilder.Entity<QRCodeType>()
                .HasIndex(x => x.QRCodeTypeName)
                .IsUnique();
            modelBuilder.Entity<Company>().Property(x => x.PIB)
               .ValueGeneratedNever();
        }
        public DbSet<Event> Event { get; set; }
        public DbSet<Answer> Answer { get; set; }
        public DbSet<Company> Company { get; set; }
        public DbSet<CustomerAnswer> CustomerAnswer { get; set; }
        public DbSet<Customer> Customer { get; set; }
        public DbSet<Discount> Discount { get; set; }
        public DbSet<EventType> EventType { get; set; }
        public DbSet<Form> Form { get; set; }
        public DbSet<Location> Location { get; set; }
        public DbSet<OfferByCompany> OfferByCompany { get; set; }
        public DbSet<Offer> Offer { get; set; }
        public DbSet<Product> Product { get; set; }
        public DbSet<QRCode> QRCode { get; set; }
        public DbSet<Question> Question { get; set; }
        public DbSet<QuestionType> QuestionType { get; set; }
        public DbSet<Reservation> Reservation { get; set; }
        public DbSet<ShoppingLocation> ShoppingLocation { get; set; }
        public DbSet<TextCustomerAnswer> TextCustomerAnswer { get; set; }
        public DbSet<Meeting> Meeting { get; set; }
        public DbSet<SentCompanyEmail> SentCompanyEmail { get; set; }
        public DbSet<EventLocation> EventLocation { get; set; }
        public DbSet<PersonalEmail> PersonalEmail { get; set; }
        public DbSet<SentPersonalEmail> SentPersonalEmail { get; set; }
        public DbSet<ProductInLocation> ProductInLocation { get; set; }
        public DbSet<ScannedByCustomer> ScannedByCustomer { get; set; }
        public DbSet<QRCodeType> QRCodeType { get; set; }
    }
}
