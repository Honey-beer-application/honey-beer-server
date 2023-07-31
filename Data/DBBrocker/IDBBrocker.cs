using honey_beer_server_app.Data.Functions.Meetings;
using honey_beer_server_app.Models;

namespace honey_beer_server_app.Data.DBBrocker.DBBrocker
{
    public interface IDBBrocker
    {
        IEnumerable<Customer> GetAllCustomers();
        Customer CreateCustomer(Customer customer);
        bool DeleteCustomer(Customer customer);
        bool CreateCompany(Company company);
        bool DeleteCompany(Company company);
        IEnumerable<Offer> GetAllOffers();
        IEnumerable<OfferByCompany> GetAllOffersByCompany(Company company);
        IEnumerable<Product> LoadAllProducts();
        bool UpdateOfferByCompany(OfferByCompany offerByCompany);
        bool CreateOffer(Offer offer);
        bool CreateMeeting(Meeting meeting);
        IEnumerable<Reservation> LoadAllReservations();
        IEnumerable<Reservation> SelectReservations(Reservation reservation);
        bool SaveReservation(Reservation reservation);
        bool SaveEmail(SentCompanyEmail email);
        IEnumerable<Location> LoadAllLocations();
        IEnumerable<EventLocation> LoadAllPromotions();
        IEnumerable<Discount> LoadAllDiscounts();
        IEnumerable<ShoppingLocation> LoadAllShoppingLocations();
        bool SaveForm(Form form);
        bool SendEmail(SentPersonalEmail email);
        bool SaveAllVotes(List<CustomerAnswer> votes);
        bool SaveOfferByCompany(OfferByCompany offerByCompany);
        OfferByCompany LoadOfferByCompany(long id);
        IEnumerable<Event> LoadAllEvents();
        bool SaveQRCode(QRCode qrCode);
    }
}
