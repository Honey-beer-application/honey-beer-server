﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using honey_beer_server_app.Repositories.DBContextNamespace;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    [DbContext(typeof(DBContext))]
    [Migration("20230803003157_CreatingEventLocationTable")]
    partial class CreatingEventLocationTable
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.9")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("honey_beer_server_app.Models.Answer", b =>
                {
                    b.Property<long>("EventId")
                        .HasColumnType("bigint")
                        .HasColumnName("event_id");

                    b.Property<long>("QuestionId")
                        .HasColumnType("bigint")
                        .HasColumnName("question_id");

                    b.Property<long>("AnswerId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("answer_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("AnswerId"));

                    b.Property<string>("Value")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("value");

                    b.HasKey("EventId", "QuestionId", "AnswerId");

                    b.HasIndex("AnswerId");

                    b.ToTable("answer");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Company", b =>
                {
                    b.Property<long>("PIB")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("PIB"));

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("email");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("name");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("password");

                    b.HasKey("PIB");

                    b.HasIndex("PIB");

                    b.ToTable("company");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Customer", b =>
                {
                    b.Property<long>("CustomerId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("customer_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("CustomerId"));

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)")
                        .HasColumnName("email");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("password");

                    b.Property<string>("Username")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("username");

                    b.HasKey("CustomerId");

                    b.HasIndex("CustomerId");

                    b.HasIndex("Email");

                    b.ToTable("customer");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.CustomerAnswer", b =>
                {
                    b.Property<long>("EventId")
                        .HasColumnType("bigint")
                        .HasColumnName("event_id");

                    b.Property<long>("QuestionId")
                        .HasColumnType("bigint")
                        .HasColumnName("question_id");

                    b.Property<long>("AnswerId")
                        .HasColumnType("bigint")
                        .HasColumnName("answer_id");

                    b.Property<long>("FormId")
                        .HasColumnType("bigint")
                        .HasColumnName("form_id");

                    b.Property<long?>("CustomerId")
                        .HasColumnType("bigint")
                        .HasColumnName("customer_id");

                    b.Property<DateTime>("Date")
                        .HasColumnType("datetime2")
                        .HasColumnName("date");

                    b.HasKey("EventId", "QuestionId", "AnswerId", "FormId");

                    b.HasIndex("CustomerId");

                    b.HasIndex("FormId");

                    b.ToTable("customer_answer");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Discount", b =>
                {
                    b.Property<long>("PIB")
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    b.Property<long>("ShoppingLocationId")
                        .HasColumnType("bigint")
                        .HasColumnName("shopping_location_id");

                    b.Property<long>("ProductId")
                        .HasColumnType("bigint")
                        .HasColumnName("product_id");

                    b.Property<DateTime>("BeginDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("begin_date");

                    b.Property<DateTime>("EndDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("end_date");

                    b.Property<int>("Percentage")
                        .HasColumnType("int")
                        .HasColumnName("percentage");

                    b.HasKey("PIB", "ShoppingLocationId", "ProductId");

                    b.HasIndex("ProductId");

                    b.ToTable("discount");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Event", b =>
                {
                    b.Property<long>("EventId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("event_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("EventId"));

                    b.Property<DateTime>("BeginDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("begin_date");

                    b.Property<DateTime>("CreationDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("creation_date");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("description");

                    b.Property<DateTime>("EndDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("end_date");

                    b.Property<long>("EventTypeId")
                        .HasColumnType("bigint")
                        .HasColumnName("event_type_id");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("title");

                    b.HasKey("EventId");

                    b.HasIndex("EventTypeId");

                    b.ToTable("event");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.EventLocation", b =>
                {
                    b.Property<long>("EventId")
                        .HasColumnType("bigint")
                        .HasColumnName("event_id");

                    b.Property<long>("EventLocationId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("event_location_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("EventLocationId"));

                    b.Property<string>("Location")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("location");

                    b.HasKey("EventId", "EventLocationId");

                    b.ToTable("event_location");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.EventType", b =>
                {
                    b.Property<long>("EventTypeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("event_type_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("EventTypeId"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("name");

                    b.HasKey("EventTypeId");

                    b.ToTable("event_type");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Form", b =>
                {
                    b.Property<long>("FormId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("form_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("FormId"));

                    b.Property<DateTime>("CreationDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("creation_date");

                    b.Property<long>("EventId")
                        .HasColumnType("bigint")
                        .HasColumnName("event_id");

                    b.Property<long?>("QRCodeId")
                        .HasColumnType("bigint")
                        .HasColumnName("qr_code_id");

                    b.HasKey("FormId");

                    b.HasIndex("QRCodeId");

                    b.ToTable("form");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Location", b =>
                {
                    b.Property<long>("LocationId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("location_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("LocationId"));

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("email");

                    b.Property<string>("LocationName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("location_name");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("phone");

                    b.HasKey("LocationId");

                    b.ToTable("location");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Meeting", b =>
                {
                    b.Property<long>("PIB")
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    b.Property<long>("MeetingId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("meeting_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("MeetingId"));

                    b.Property<DateTime>("DateAndTime")
                        .HasColumnType("datetime2")
                        .HasColumnName("date_and_time");

                    b.HasKey("PIB", "MeetingId");

                    b.ToTable("meeting");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Offer", b =>
                {
                    b.Property<long>("ProductId")
                        .HasColumnType("bigint")
                        .HasColumnName("product_id");

                    b.Property<long>("OfferId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("offer_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("OfferId"));

                    b.Property<int>("Amount")
                        .HasColumnType("int")
                        .HasColumnName("amount");

                    b.Property<DateTime>("BeginDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("begin_date");

                    b.Property<DateTime>("EndDate")
                        .HasColumnType("datetime2")
                        .HasColumnName("end_date");

                    b.HasKey("ProductId", "OfferId");

                    b.ToTable("offer");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.OfferByCompany", b =>
                {
                    b.Property<long>("PIB")
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    b.Property<long>("ProductId")
                        .HasColumnType("bigint")
                        .HasColumnName("product_id");

                    b.Property<long>("OfferId")
                        .HasColumnType("bigint")
                        .HasColumnName("offer_id");

                    b.HasKey("PIB", "ProductId", "OfferId");

                    b.HasIndex("ProductId", "OfferId");

                    b.ToTable("offer_by_company");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.PersonalEmail", b =>
                {
                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(450)")
                        .HasColumnName("email");

                    b.HasKey("Email");

                    b.ToTable("personal_email");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Product", b =>
                {
                    b.Property<long>("ProductId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("product_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("ProductId"));

                    b.Property<string>("description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("description");

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("name");

                    b.HasKey("ProductId");

                    b.ToTable("product");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.ProductInLocation", b =>
                {
                    b.Property<long>("PIB")
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    b.Property<long>("ShoppingLocationId")
                        .HasColumnType("bigint")
                        .HasColumnName("shopping_location_id");

                    b.Property<long>("ProductId")
                        .HasColumnType("bigint")
                        .HasColumnName("product_id");

                    b.HasKey("PIB", "ShoppingLocationId", "ProductId");

                    b.HasIndex("ProductId");

                    b.ToTable("product_in_location");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.QRCode", b =>
                {
                    b.Property<long>("QRCodeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("qr_code_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("QRCodeId"));

                    b.Property<string>("Code")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)")
                        .HasColumnName("code");

                    b.Property<long>("QRCodeTypeId")
                        .HasColumnType("bigint")
                        .HasColumnName("qr_code_type_id");

                    b.HasKey("QRCodeId");

                    b.HasIndex("Code")
                        .IsUnique();

                    b.HasIndex("QRCodeTypeId");

                    b.ToTable("qr_code");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.QRCodeType", b =>
                {
                    b.Property<long>("QRCodeTypeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("qr_code_type_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("QRCodeTypeId"));

                    b.Property<string>("QRCodeTypeName")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)")
                        .HasColumnName("qr_code_type_name");

                    b.HasKey("QRCodeTypeId");

                    b.HasIndex("QRCodeTypeName")
                        .IsUnique();

                    b.ToTable("qr_code_type");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Question", b =>
                {
                    b.Property<long>("EventId")
                        .HasColumnType("bigint")
                        .HasColumnName("event_id");

                    b.Property<long>("QuestionId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("question_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("QuestionId"));

                    b.Property<long>("QuestionTypeId")
                        .HasColumnType("bigint")
                        .HasColumnName("question_type_id");

                    b.Property<string>("Text")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("text");

                    b.HasKey("EventId", "QuestionId");

                    b.HasIndex("QuestionTypeId");

                    b.ToTable("question");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.QuestionType", b =>
                {
                    b.Property<long>("QuestionTypeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("question_type_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("QuestionTypeId"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("name");

                    b.HasKey("QuestionTypeId");

                    b.ToTable("question_type");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Reservation", b =>
                {
                    b.Property<long>("ReservationId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("reservation_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("ReservationId"));

                    b.Property<long>("ProductId")
                        .HasColumnType("bigint")
                        .HasColumnName("product_id");

                    b.Property<long>("PIB")
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    b.Property<int>("Amount")
                        .HasColumnType("int")
                        .HasColumnName("amount");

                    b.Property<DateTime?>("Delivery")
                        .IsRequired()
                        .HasColumnType("datetime2")
                        .HasColumnName("delivery");

                    b.HasKey("ReservationId", "ProductId", "PIB");

                    b.HasIndex("PIB");

                    b.HasIndex("ProductId");

                    b.ToTable("reservation");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.ScannedByCustomer", b =>
                {
                    b.Property<long>("QRCodeId")
                        .HasColumnType("bigint")
                        .HasColumnName("qr_code_id");

                    b.Property<long>("CustomerId")
                        .HasColumnType("bigint")
                        .HasColumnName("sutomer_id");

                    b.HasKey("QRCodeId", "CustomerId");

                    b.HasIndex("CustomerId");

                    b.HasIndex("QRCodeId")
                        .IsUnique();

                    b.ToTable("scanned_by");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.SentCompanyEmail", b =>
                {
                    b.Property<long>("PIB")
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    b.Property<long>("SentCompanyEmailId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("sent_company_email_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("SentCompanyEmailId"));

                    b.Property<DateTime>("DateAndTime")
                        .HasColumnType("datetime2")
                        .HasColumnName("date_and_time");

                    b.HasKey("PIB", "SentCompanyEmailId");

                    b.ToTable("sent_company_email");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.SentPersonalEmail", b =>
                {
                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(450)")
                        .HasColumnName("email");

                    b.Property<long>("SentPersonalEmailId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("sent_personal_email_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("SentPersonalEmailId"));

                    b.Property<DateTime>("DateAndTime")
                        .HasColumnType("datetime2")
                        .HasColumnName("date_and_time");

                    b.HasKey("Email", "SentPersonalEmailId");

                    b.ToTable("sent_personal_email");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.ShoppingLocation", b =>
                {
                    b.Property<long>("PIB")
                        .HasColumnType("bigint")
                        .HasColumnName("pib");

                    b.Property<long>("ShoppingLocationId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint")
                        .HasColumnName("shopping_location_id");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("ShoppingLocationId"));

                    b.Property<string>("Location")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("location");

                    b.HasKey("PIB", "ShoppingLocationId");

                    b.ToTable("shopping_location");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.TextCustomerAnswer", b =>
                {
                    b.Property<long>("EventId")
                        .HasColumnType("bigint")
                        .HasColumnName("event_id");

                    b.Property<long>("QuestionId")
                        .HasColumnType("bigint")
                        .HasColumnName("question_id");

                    b.Property<long>("AnswerId")
                        .HasColumnType("bigint")
                        .HasColumnName("answer_id");

                    b.Property<long>("FormId")
                        .HasColumnType("bigint")
                        .HasColumnName("form_id");

                    b.Property<long>("CustomerAnswerInstanceAnswerId")
                        .HasColumnType("bigint");

                    b.Property<long>("CustomerAnswerInstanceEventId")
                        .HasColumnType("bigint");

                    b.Property<long>("CustomerAnswerInstanceFormId")
                        .HasColumnType("bigint");

                    b.Property<long>("CustomerAnswerInstanceQuestionId")
                        .HasColumnType("bigint");

                    b.Property<string>("Text")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)")
                        .HasColumnName("text");

                    b.HasKey("EventId", "QuestionId", "AnswerId", "FormId");

                    b.HasIndex("CustomerAnswerInstanceEventId", "CustomerAnswerInstanceQuestionId", "CustomerAnswerInstanceAnswerId", "CustomerAnswerInstanceFormId");

                    b.ToTable("text_customer_answer");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Answer", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Question", "EventQuestion")
                        .WithMany()
                        .HasForeignKey("EventId", "QuestionId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("EventQuestion");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Customer", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.PersonalEmail", "PersonalEmailInstance")
                        .WithMany()
                        .HasForeignKey("Email")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PersonalEmailInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.CustomerAnswer", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Customer", "Customer")
                        .WithMany()
                        .HasForeignKey("CustomerId");

                    b.HasOne("honey_beer_server_app.Models.Form", "Form")
                        .WithMany("CustomerAnswers")
                        .HasForeignKey("FormId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("honey_beer_server_app.Models.Answer", "Answer")
                        .WithMany()
                        .HasForeignKey("EventId", "QuestionId", "AnswerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Answer");

                    b.Navigation("Customer");

                    b.Navigation("Form");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Discount", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Product", "ProductInstance")
                        .WithMany()
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("honey_beer_server_app.Models.ShoppingLocation", "ShoppingLocationInstance")
                        .WithMany("Discounts")
                        .HasForeignKey("PIB", "ShoppingLocationId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("ProductInstance");

                    b.Navigation("ShoppingLocationInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Event", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.EventType", "EventTypeInstance")
                        .WithMany()
                        .HasForeignKey("EventTypeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("EventTypeInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.EventLocation", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Event", "EventInstance")
                        .WithMany("EventLocations")
                        .HasForeignKey("EventId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("EventInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Form", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.QRCode", "QRCodeInstance")
                        .WithMany()
                        .HasForeignKey("QRCodeId");

                    b.Navigation("QRCodeInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Meeting", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Company", "CompanyInstance")
                        .WithMany()
                        .HasForeignKey("PIB")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CompanyInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Offer", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Product", "ProductInstance")
                        .WithMany("OfferInstance")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("ProductInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.OfferByCompany", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Company", "CompanyInstance")
                        .WithMany("OffersByCompanies")
                        .HasForeignKey("PIB")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("honey_beer_server_app.Models.Offer", "OfferInstance")
                        .WithMany("OffersByCompanies")
                        .HasForeignKey("ProductId", "OfferId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CompanyInstance");

                    b.Navigation("OfferInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.ProductInLocation", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Product", null)
                        .WithMany("LocationsForProduct")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("honey_beer_server_app.Models.ShoppingLocation", "ShoppingLocationInstance")
                        .WithMany("ProductsInLocationInstance")
                        .HasForeignKey("PIB", "ShoppingLocationId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("ShoppingLocationInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.QRCode", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.QRCodeType", "QRCodeTypeInstance")
                        .WithMany()
                        .HasForeignKey("QRCodeTypeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("QRCodeTypeInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Question", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Event", "EventInstance")
                        .WithMany("Questions")
                        .HasForeignKey("EventId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("honey_beer_server_app.Models.QuestionType", "QuestionTypeInstance")
                        .WithMany()
                        .HasForeignKey("QuestionTypeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("EventInstance");

                    b.Navigation("QuestionTypeInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Reservation", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Company", "CompanyInstance")
                        .WithMany()
                        .HasForeignKey("PIB")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("honey_beer_server_app.Models.Product", "ProductInstance")
                        .WithMany()
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CompanyInstance");

                    b.Navigation("ProductInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.ScannedByCustomer", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Customer", null)
                        .WithOne("ScannedByCustomerInstance")
                        .HasForeignKey("honey_beer_server_app.Models.ScannedByCustomer", "CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("honey_beer_server_app.Models.QRCode", null)
                        .WithOne("ScannedByCustomerInstance")
                        .HasForeignKey("honey_beer_server_app.Models.ScannedByCustomer", "QRCodeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("honey_beer_server_app.Models.SentCompanyEmail", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Company", "CompanyInstance")
                        .WithMany()
                        .HasForeignKey("PIB")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CompanyInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.SentPersonalEmail", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.PersonalEmail", "PersonalEmailInstance")
                        .WithMany()
                        .HasForeignKey("Email")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PersonalEmailInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.ShoppingLocation", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.Company", "CompanyInstance")
                        .WithMany()
                        .HasForeignKey("PIB")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CompanyInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.TextCustomerAnswer", b =>
                {
                    b.HasOne("honey_beer_server_app.Models.CustomerAnswer", "CustomerAnswerInstance")
                        .WithMany()
                        .HasForeignKey("CustomerAnswerInstanceEventId", "CustomerAnswerInstanceQuestionId", "CustomerAnswerInstanceAnswerId", "CustomerAnswerInstanceFormId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CustomerAnswerInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Company", b =>
                {
                    b.Navigation("OffersByCompanies");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Customer", b =>
                {
                    b.Navigation("ScannedByCustomerInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Event", b =>
                {
                    b.Navigation("EventLocations");

                    b.Navigation("Questions");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Form", b =>
                {
                    b.Navigation("CustomerAnswers");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Offer", b =>
                {
                    b.Navigation("OffersByCompanies");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.Product", b =>
                {
                    b.Navigation("LocationsForProduct");

                    b.Navigation("OfferInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.QRCode", b =>
                {
                    b.Navigation("ScannedByCustomerInstance");
                });

            modelBuilder.Entity("honey_beer_server_app.Models.ShoppingLocation", b =>
                {
                    b.Navigation("Discounts");

                    b.Navigation("ProductsInLocationInstance");
                });
#pragma warning restore 612, 618
        }
    }
}
