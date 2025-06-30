using honey_beer_server_app.Repositories;
using honey_beer_server_app.Repositories.DBContextNamespace;
using honey_beer_server_app.Services.CompanyService;
using honey_beer_server_app.Services.CustomerService;
using honey_beer_server_app.Services.DiscountService;
using honey_beer_server_app.Services.EventService;
using honey_beer_server_app.Services.FormService;
using honey_beer_server_app.Services.LocationService;
using honey_beer_server_app.Services.MeetingService;
using honey_beer_server_app.Services.OfferByCompanyService;
using honey_beer_server_app.Services.OfferSerice;
using honey_beer_server_app.Services.PersonalEmailService;
using honey_beer_server_app.Services.ProductService;
using honey_beer_server_app.Services.PromotionService;
using honey_beer_server_app.Services.QRCodeService;
using honey_beer_server_app.Services.ReservationService;
using honey_beer_server_app.Services.SentCompanyEmailService;
using honey_beer_server_app.Services.ShoppingLocationService;
using Microsoft.EntityFrameworkCore;
using OpenTelemetry.Exporter;
using OpenTelemetry.Logs;
using OpenTelemetry.Metrics;
using OpenTelemetry.Resources;
using OpenTelemetry.Trace;
using Serilog;
using Serilog.Sinks.OpenTelemetry;

var builder = WebApplication.CreateBuilder(args);

builder.Logging.ClearProviders();

builder.Host.UseSerilog((context, loggerConfig) =>
{
    loggerConfig
    //.WriteTo.Console()
    .WriteTo.OpenTelemetry(options =>
    {
        options.ResourceAttributes.Add("service.name", "ASP_NET_CORE");
        options.Endpoint = "http://opentelemetry-collector:4317";
        options.Protocol = OtlpProtocol.Grpc;
    });
});


builder.Services.AddOpenTelemetry()
      .ConfigureResource(resource => resource.AddService("ASP_NET_CORE"))
      .WithTracing(tracing => tracing
          .AddAspNetCoreInstrumentation()
          .AddHttpClientInstrumentation()
          .AddAspNetCoreInstrumentation()
          .AddOtlpExporter(options =>
          {
              options.Endpoint = new Uri("http://opentelemetry-collector:4317");
              options.Protocol = OtlpExportProtocol.Grpc;
          })
          //.AddConsoleExporter()
      )
      .WithMetrics(metrics => metrics
          .AddAspNetCoreInstrumentation()
          .AddHttpClientInstrumentation()
          .AddRuntimeInstrumentation()
          .AddProcessInstrumentation()
          .AddPrometheusExporter()
          //.AddOtlpExporter((options, write) =>
          //{
          //    options.Endpoint = new Uri("http://opentelemetry-collector:4317");
          //    options.Protocol = OtlpExportProtocol.Grpc;
          //    write.PeriodicExportingMetricReaderOptions.ExportIntervalMilliseconds = 5000;
          //})
          //.AddConsoleExporter()
      );



// Add services to the container.
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
string _dockerConnection = "Server=mssqlserver,1433;Initial Catalog=honey-beer-database;User Id=sa;Password=stvarnoNovo10;Encrypt=no;TrustServerCertificate=True;Integrated security=False;";
string server = builder.Configuration["Data:CommandAPIConnection:ConnectionString"]?? _dockerConnection;
builder.Services.AddDbContext<DBContext>(opt => opt.UseSqlServer(server));
builder.Services.AddScoped<CompanyRepository>();
builder.Services.AddScoped<CustomerRepository>();
builder.Services.AddScoped<DiscountRepository>();
builder.Services.AddScoped<EventRepository>();
builder.Services.AddScoped<FormRepository>();
builder.Services.AddScoped<LocationRepository>();
builder.Services.AddScoped<MeetingRepository>();
builder.Services.AddScoped<OfferByCompanyRepository>();
builder.Services.AddScoped<OfferRepository>();
builder.Services.AddScoped<PersonalEmailRepository>();
builder.Services.AddScoped<ProductRespository>();
builder.Services.AddScoped<PromotionRepository>();
builder.Services.AddScoped<QRCodeRepository>();
builder.Services.AddScoped<ReservationRepository>();
builder.Services.AddScoped<SentCompanyEmailRepository>();
builder.Services.AddScoped<ShoppingLocationRepository>();
builder.Services.AddScoped<ICompanyService, CompanyService>();
builder.Services.AddScoped<ICustomerService, CustomerService>();
builder.Services.AddScoped<IDiscountService, DiscountService>();
builder.Services.AddScoped<IEventService, EventService>();
builder.Services.AddScoped<IFormService, FormService>();
builder.Services.AddScoped<ILocationService, LocationService>();
builder.Services.AddScoped<IMeetingService, MeetingService>();
builder.Services.AddScoped<IOfferByCompanyService, OfferByCompanyService>();
builder.Services.AddScoped<IOfferService, OfferService>();
builder.Services.AddScoped<IPersonalEmailService, PersonalEmailService>();
builder.Services.AddScoped<IProductService, ProductService>();
builder.Services.AddScoped<IPromotionService, PromotionService>();
builder.Services.AddScoped<IQRCodeService, QRCodeService>();
builder.Services.AddScoped<IReservationService, ReservationService>();
builder.Services.AddScoped<ISentCompanyEmailService, SentCompanyEmailService>();
builder.Services.AddScoped<IShoppingLocationService, ShoppingLocationService>();
string myCors = "MySpecificOrigins";
builder.Services.AddCors(options=>options.AddPolicy(name: myCors, policy => { 
    policy.WithOrigins("http://localhost:4200").AllowAnyMethod().AllowAnyHeader(); 
    policy.WithOrigins("https://honey-beer-application.github.io").AllowAnyMethod().AllowAnyHeader(); 
}));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(myCors);
app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.UseSerilogRequestLogging();

app.UseOpenTelemetryPrometheusScrapingEndpoint();


app.Run();
public partial class Program { };