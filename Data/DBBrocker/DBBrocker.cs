using honey_beer_server_app.Data.Functions.Companies;
using honey_beer_server_app.Data.Functions.CustomerAnswers___Votes;
using honey_beer_server_app.Data.Functions.Customers;
using honey_beer_server_app.Data.Functions.Emails;
using honey_beer_server_app.Data.Functions.Forms;
using honey_beer_server_app.Data.Functions.Meetings;
using honey_beer_server_app.Data.Functions.OfferByCompanies;
using honey_beer_server_app.Data.Functions.Offers;
using honey_beer_server_app.Data.Functions.QRCodes;
using honey_beer_server_app.Data.Functions.Reservations;
using honey_beer_server_app.DBBrockers;
using honey_beer_server_app.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Query;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Any;
using System.Text.Json.Serialization;

namespace honey_beer_server_app.Data.DBBrocker.DBBrocker
{
    public class DBBrocker : IDBBrocker
    {
        private readonly DBContext _context;
        public DBBrocker(DBContext context) => _context = context;

        public bool CreateCompany(Company company)
        {
            return new CreateCompany(_context).ExecuteFunction(company);
        }

        public Customer CreateCustomer(Customer customer)
        {
            return new CreateCustomer(_context).ExecuteFunction(customer);
        }

        public bool CreateMeeting(Meeting meeting)
        {
            return new CreateMeeting(_context).ExecuteFunction(meeting);
        }

        public bool CreateOffer(Offer offer)
        {
            return new CreateOffer(_context).ExcecuteFunction(offer);
        }

        public bool DeleteCompany(Company company)
        {
            return new DeleteCompany(_context).ExecuteFunction(company);
        }

        public bool DeleteCustomer(Customer customer)
        {
            return new DeleteCustomer(_context).ExecuteFunction(customer);
        }

        public IEnumerable<Customer> GetAllCustomers()
        {
            
            return _context.Customer.Include(customer=>customer.PersonalEmailInstance);
        }

        public IEnumerable<Offer> GetAllOffers()
        {
            /*IQueryable<Offer> excludeOffers = _context.Offer.Where(offer => !offer.OffersByCompanies.IsNullOrEmpty());
            IQueryable<Offer> offers = _context.Offer.Except(excludeOffers);*/
            return from product in _context.Product
                   join offer in _context.Offer
                   on product.ProductId equals offer.ProductId
                   where !(from o in _context.OfferByCompany select o.OfferId).Contains(offer.OfferId)
                   select new Offer()
                   {
                       ProductId = offer.ProductId,
                       OfferId = offer.OfferId,
                       Amount = offer.Amount,
                       BeginDate= offer.BeginDate,
                       EndDate= offer.EndDate,
                       ProductInstance = new Product() 
                       { 
                           ProductId = product.ProductId,
                           name = product.name,
                           description = product.description
                       }
                   };
        }

        public IEnumerable<OfferByCompany> GetAllOffersByCompany(Company company)
        {
            IQueryable result1 =  from obc in _context.OfferByCompany join offer in _context.Offer 
                                  on new { obc.ProductId, obc.OfferId} equals new { offer.ProductId,offer.OfferId} 
                                  join product in _context.Product on offer.ProductId equals product.ProductId
                                  select new OfferByCompany()
                                  {
                                      PIB=obc.PIB,
                                      ProductId=obc.ProductId,
                                      OfferId=obc.OfferId,
                                      CompanyInstance=null,
                                      OfferInstance=new Offer()
                                      {
                                          ProductId=offer.ProductId,
                                          OfferId=offer.OfferId,
                                          Amount=offer.Amount,
                                          BeginDate=offer.BeginDate,
                                          EndDate=offer.EndDate,
                                          ProductInstance= new Product()
                                          {
                                              ProductId=product.ProductId,
                                              name=product.name,
                                              description=product.description
                                          }
                                      }
                                  } ;
            return (IEnumerable<OfferByCompany>)result1;
        }

        public IEnumerable<Discount> LoadAllDiscounts()
        {
            return from discount in _context.Discount join shoppingLocation in _context.ShoppingLocation
                   on discount.ShoppingLocationId equals shoppingLocation.ShoppingLocationId
                   join product in _context.Product on discount.ProductId equals product.ProductId
                   join company in _context.Company on shoppingLocation.PIB equals company.PIB
                   select new Discount()
                   {
                       PIB = discount.PIB,
                       ProductId = discount.ProductId,
                       BeginDate = discount.BeginDate,
                       EndDate = discount.EndDate,
                       Percentage = discount.Percentage,
                       ProductInstance = new Product()
                       {
                           ProductId = product.ProductId,
                           description = product.description,
                           name = product.name
                       },
                       ShoppingLocationId = discount.ShoppingLocationId,
                       ShoppingLocationInstance = new ShoppingLocation()
                       {
                           ShoppingLocationId = shoppingLocation.ShoppingLocationId,
                           Location = shoppingLocation.Location,
                           PIB = shoppingLocation.PIB,
                           CompanyInstance = new Company()
                           {
                               Email = company.Email,
                               Name = company.Name,
                               PIB = company.PIB
                           }
                       }
                   };
        }

        public IEnumerable<Event> LoadAllEvents()
        {
            return from e in _context.Event join eventType in _context.EventType
                   on e.EventTypeId equals eventType.EventTypeId
                   where eventType.Name.Equals("Survey") && DateTime.Compare(e.BeginDate, DateTime.Now) <= 0 && DateTime.Compare(e.EndDate, DateTime.Now) >= 0
                   select new Event()
                   {
                       CreationDate = e.CreationDate,
                       Description = e.Description,
                       EventId = e.EventId,
                       EventTypeId = e.EventTypeId,
                       Title = e.Title,
                       Questions = (from question in _context.Question
                                    join questionType in _context.QuestionType on question.QuestionTypeId equals questionType.QuestionTypeId
                                    select new Question()
                                    {
                                        QuestionId = question.QuestionId,
                                        EventId = question.EventId,
                                        QuestionTypeId = question.QuestionTypeId,
                                        QuestionTypeInstance = new QuestionType()
                                        {
                                            QuestionTypeId = questionType.QuestionTypeId,
                                            Name = questionType.Name
                                        },
                                        Text= question.Text,
                                        Answers = _context.Answer.Where(answer=>answer.QuestionId==question.QuestionId&&answer.EventId==question.EventId).ToList()
                                    }).ToList(),
                       EventTypeInstance = new EventType()
                       {
                           EventTypeId = eventType.EventTypeId,
                           Name = eventType.Name
                       },
                   };
        }

        public IEnumerable<Location> LoadAllLocations()
        {
            return _context.Location;
        }

        public IEnumerable<Product> LoadAllProducts()
        {
            
            return from product in _context.Product select new Product()
            {
                ProductId = product.ProductId,
                name = product.name,
                description = product.description,
                OfferInstance = _context.Offer.Where(offer=>offer.ProductId==product.ProductId).ToList()
            } ;
        }

        public IEnumerable<EventLocation> LoadAllPromotions()
        {
            return _context.EventLocation.Include(promotion=>promotion.EventInstance);
        }

        public IEnumerable<Reservation> LoadAllReservations()
        {
            return _context.Reservation.Include(reservation=>reservation.ProductInstance).Include(reservation=>reservation.CompanyInstance);
        }

        public IEnumerable<ShoppingLocation> LoadAllShoppingLocations()
        {
            return from shoppingLocation in _context.ShoppingLocation join company in _context.Company
                   on shoppingLocation.PIB equals company.PIB
                   where (from productInLocation in _context.ProductInLocation
                          where productInLocation.ShoppingLocationId==shoppingLocation.ShoppingLocationId && productInLocation.PIB==shoppingLocation.PIB
                          select productInLocation.ShoppingLocationId).Count()>0
                   select new ShoppingLocation()
                   {
                       PIB = shoppingLocation.PIB,
                       Location = shoppingLocation.Location,
                       ShoppingLocationId = shoppingLocation.ShoppingLocationId,
                       ProductsInLocation = (from product in _context.Product
                                             join productInLocation in _context.ProductInLocation
                                            on product.ProductId equals productInLocation.ProductId
                                             where productInLocation.ShoppingLocationId == shoppingLocation.ShoppingLocationId && productInLocation.PIB == shoppingLocation.PIB
                                             select new Product()
                                             {
                                                 ProductId = product.ProductId,
                                                 description = product.description,
                                                 name = product.name
                                             }).ToList()
                   };
        }

        public OfferByCompany LoadOfferByCompany(long id)
        {
            IQueryable<OfferByCompany?> result = from offerByCompany in _context.OfferByCompany
                                      join offer in _context.Offer
                                      on new { offerByCompany.OfferId, offerByCompany.ProductId } equals new { offer.OfferId, offer.ProductId }
                                      join product in _context.Product on offer.ProductId equals product.ProductId
                                      where offerByCompany.OfferId == id
                                      select new OfferByCompany()
                                      {
                                          PIB = offerByCompany.PIB,
                                          ProductId = offerByCompany.ProductId,
                                          OfferId = offerByCompany.OfferId,
                                          OfferInstance = new Offer()
                                          {
                                              OfferId = offerByCompany.OfferId,
                                              ProductId = product.ProductId,
                                              Amount = offer.Amount,
                                              BeginDate = offer.BeginDate,
                                              EndDate = offer.EndDate,
                                              ProductInstance = new Product()
                                              {
                                                  ProductId = product.ProductId,
                                                  name = product.name,
                                                  description = product.description,
                                              }
                                          }
                                      };
            return result.IsNullOrEmpty() ? new OfferByCompany() : result.First();
        }

        public bool SaveAllVotes(List<CustomerAnswer> votes)
        {
            return new SaveAllVotes(_context).ExecuteFunction(votes);
        }

        public bool SaveEmail(SentCompanyEmail email)
        {
            return new SaveEmail(_context).ExecuteFunction(email);
        }

        public bool SaveForm(Form form)
        {
            return new SaveForm(_context).ExecuteFunction(form);
        }

        public bool SaveOfferByCompany(OfferByCompany offerByCompany)
        {
            return new SaveOfferByCompnay(_context).ExcecuteFunction(offerByCompany);
        }

        public bool SaveQRCode(QRCode qrCode)
        {
            return new SaveQRCode(_context).ExecuteFunction(qrCode);
        }

        public bool SaveReservation(Reservation reservation)
        {
            return new SaveReservation(_context).ExecuteFunction(reservation);
        }

        public IEnumerable<Reservation> SelectReservations(Reservation reservation)
        {

            IQueryable<Reservation> result = _context.Reservation.Include(reservation=>reservation.ProductInstance).Include(reservation=>reservation.CompanyInstance);

            if(reservation.PIB>=10000001&&reservation.PIB<=99999999)
                result = _context.Reservation.Where(r => r.PIB == reservation.PIB);

            if (reservation.ProductId > 0 )
                result = result.Where(r => r.ProductId == reservation.ProductId);

            if (reservation.IsAmountValid())
                result = result.Where(r => r.Amount == reservation.Amount);

            if (reservation.IsDeliveryValid())
                result = result.Where(r => r.Delivery!=null&&DateTime.Compare((DateTime)r.Delivery, (DateTime)reservation.Delivery)==0);

            return result;
        }

        public bool SendEmail(SentPersonalEmail email)
        {
            return new SaveSentPersonalEmail(_context).ExecuteFunction(email);
        }

        public bool UpdateOfferByCompany(OfferByCompany offerByCompany)
        {
            return new UpdateOfferByCompany(_context).ExecuteFunction(offerByCompany);
        }
    }
}
