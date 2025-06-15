using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class CreatingClasses : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "company",
                columns: table => new
                {
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    password = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_company", x => x.pib);
                });

            migrationBuilder.CreateTable(
                name: "event_location",
                columns: table => new
                {
                    event_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    location = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_event_location", x => x.event_id);
                });

            migrationBuilder.CreateTable(
                name: "event_type",
                columns: table => new
                {
                    event_type_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_event_type", x => x.event_type_id);
                });

            migrationBuilder.CreateTable(
                name: "location",
                columns: table => new
                {
                    location_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    location_name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_location", x => x.location_id);
                });

            migrationBuilder.CreateTable(
                name: "personal_email",
                columns: table => new
                {
                    email = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_personal_email", x => x.email);
                });

            migrationBuilder.CreateTable(
                name: "product",
                columns: table => new
                {
                    product_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_product", x => x.product_id);
                });

            migrationBuilder.CreateTable(
                name: "qr_code",
                columns: table => new
                {
                    qr_code_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    code = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    scanned = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_qr_code", x => x.qr_code_id);
                });

            migrationBuilder.CreateTable(
                name: "question_type",
                columns: table => new
                {
                    question_type_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_question_type", x => x.question_type_id);
                });

            migrationBuilder.CreateTable(
                name: "meeting",
                columns: table => new
                {
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    meeting_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    date_and_time = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_meeting", x => new { x.pib, x.meeting_id });
                    table.ForeignKey(
                        name: "FK_meeting_company_pib",
                        column: x => x.pib,
                        principalTable: "company",
                        principalColumn: "pib",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "sent_company_email",
                columns: table => new
                {
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    sent_company_email_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    date_and_time = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_sent_company_email", x => new { x.pib, x.sent_company_email_id });
                    table.ForeignKey(
                        name: "FK_sent_company_email_company_pib",
                        column: x => x.pib,
                        principalTable: "company",
                        principalColumn: "pib",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "shopping_location",
                columns: table => new
                {
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    shopping_location_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    location = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_shopping_location", x => new { x.pib, x.shopping_location_id });
                    table.ForeignKey(
                        name: "FK_shopping_location_company_pib",
                        column: x => x.pib,
                        principalTable: "company",
                        principalColumn: "pib",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "event",
                columns: table => new
                {
                    event_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    creation_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    begin_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    end_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    event_type_id = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_event", x => x.event_id);
                    table.ForeignKey(
                        name: "FK_event_event_type_event_type_id",
                        column: x => x.event_type_id,
                        principalTable: "event_type",
                        principalColumn: "event_type_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "customer",
                columns: table => new
                {
                    customer_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    username = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    password = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    email = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_customer", x => x.customer_id);
                    table.ForeignKey(
                        name: "FK_customer_personal_email_email",
                        column: x => x.email,
                        principalTable: "personal_email",
                        principalColumn: "email",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "sent_personal_email",
                columns: table => new
                {
                    email = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    sent_personal_email_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    date_and_time = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_sent_personal_email", x => new { x.email, x.sent_personal_email_id });
                    table.ForeignKey(
                        name: "FK_sent_personal_email_personal_email_email",
                        column: x => x.email,
                        principalTable: "personal_email",
                        principalColumn: "email",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "offer",
                columns: table => new
                {
                    product_id = table.Column<long>(type: "bigint", nullable: false),
                    offer_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    amount = table.Column<int>(type: "int", nullable: false),
                    begin_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    end_date = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_offer", x => new { x.product_id, x.offer_id });
                    table.ForeignKey(
                        name: "FK_offer_product_product_id",
                        column: x => x.product_id,
                        principalTable: "product",
                        principalColumn: "product_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "reservation",
                columns: table => new
                {
                    reservation_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    product_id = table.Column<long>(type: "bigint", nullable: false),
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    amount = table.Column<int>(type: "int", nullable: false),
                    delivery = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_reservation", x => new { x.reservation_id, x.product_id, x.pib });
                    table.ForeignKey(
                        name: "FK_reservation_company_pib",
                        column: x => x.pib,
                        principalTable: "company",
                        principalColumn: "pib",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_reservation_product_product_id",
                        column: x => x.product_id,
                        principalTable: "product",
                        principalColumn: "product_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "form",
                columns: table => new
                {
                    form_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    creation_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    event_id = table.Column<long>(type: "bigint", nullable: false),
                    qr_code_id = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_form", x => x.form_id);
                    table.ForeignKey(
                        name: "FK_form_qr_code_qr_code_id",
                        column: x => x.qr_code_id,
                        principalTable: "qr_code",
                        principalColumn: "qr_code_id");
                });

            migrationBuilder.CreateTable(
                name: "discount",
                columns: table => new
                {
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    shopping_location_id = table.Column<long>(type: "bigint", nullable: false),
                    product_id = table.Column<long>(type: "bigint", nullable: false),
                    percentage = table.Column<int>(type: "int", nullable: false),
                    begin_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    end_date = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_discount", x => new { x.pib, x.shopping_location_id, x.product_id });
                    table.ForeignKey(
                        name: "FK_discount_product_product_id",
                        column: x => x.product_id,
                        principalTable: "product",
                        principalColumn: "product_id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_discount_shopping_location_pib_shopping_location_id",
                        columns: x => new { x.pib, x.shopping_location_id },
                        principalTable: "shopping_location",
                        principalColumns: new[] { "pib", "shopping_location_id" },
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "question",
                columns: table => new
                {
                    event_id = table.Column<long>(type: "bigint", nullable: false),
                    question_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    text = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    question_type_id = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_question", x => new { x.event_id, x.question_id });
                    table.ForeignKey(
                        name: "FK_question_event_event_id",
                        column: x => x.event_id,
                        principalTable: "event",
                        principalColumn: "event_id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_question_question_type_question_type_id",
                        column: x => x.question_type_id,
                        principalTable: "question_type",
                        principalColumn: "question_type_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "offer_by_company",
                columns: table => new
                {
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    product_id = table.Column<long>(type: "bigint", nullable: false),
                    offer_id = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_offer_by_company", x => new { x.pib, x.product_id, x.offer_id });
                    table.ForeignKey(
                        name: "FK_offer_by_company_company_pib",
                        column: x => x.pib,
                        principalTable: "company",
                        principalColumn: "pib",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_offer_by_company_offer_product_id_offer_id",
                        columns: x => new { x.product_id, x.offer_id },
                        principalTable: "offer",
                        principalColumns: new[] { "product_id", "offer_id" },
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "answer",
                columns: table => new
                {
                    event_id = table.Column<long>(type: "bigint", nullable: false),
                    question_id = table.Column<long>(type: "bigint", nullable: false),
                    answer_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    value = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_answer", x => new { x.event_id, x.question_id, x.answer_id });
                    table.ForeignKey(
                        name: "FK_answer_question_event_id_question_id",
                        columns: x => new { x.event_id, x.question_id },
                        principalTable: "question",
                        principalColumns: new[] { "event_id", "question_id" },
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "customer_answer",
                columns: table => new
                {
                    event_id = table.Column<long>(type: "bigint", nullable: false),
                    question_id = table.Column<long>(type: "bigint", nullable: false),
                    answer_id = table.Column<long>(type: "bigint", nullable: false),
                    form_id = table.Column<long>(type: "bigint", nullable: false),
                    date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    customer_id = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_customer_answer", x => new { x.event_id, x.question_id, x.answer_id, x.form_id });
                    table.ForeignKey(
                        name: "FK_customer_answer_answer_event_id_question_id_answer_id",
                        columns: x => new { x.event_id, x.question_id, x.answer_id },
                        principalTable: "answer",
                        principalColumns: new[] { "event_id", "question_id", "answer_id" },
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_customer_answer_customer_customer_id",
                        column: x => x.customer_id,
                        principalTable: "customer",
                        principalColumn: "customer_id");
                    table.ForeignKey(
                        name: "FK_customer_answer_form_form_id",
                        column: x => x.form_id,
                        principalTable: "form",
                        principalColumn: "form_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "text_customer_answer",
                columns: table => new
                {
                    event_id = table.Column<long>(type: "bigint", nullable: false),
                    question_id = table.Column<long>(type: "bigint", nullable: false),
                    answer_id = table.Column<long>(type: "bigint", nullable: false),
                    form_id = table.Column<long>(type: "bigint", nullable: false),
                    text = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CustomerAnswerInstanceEventId = table.Column<long>(type: "bigint", nullable: false),
                    CustomerAnswerInstanceQuestionId = table.Column<long>(type: "bigint", nullable: false),
                    CustomerAnswerInstanceAnswerId = table.Column<long>(type: "bigint", nullable: false),
                    CustomerAnswerInstanceFormId = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_text_customer_answer", x => new { x.event_id, x.question_id, x.answer_id, x.form_id });
                    table.ForeignKey(
                        name: "FK_text_customer_answer_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAn~",
                        columns: x => new { x.CustomerAnswerInstanceEventId, x.CustomerAnswerInstanceQuestionId, x.CustomerAnswerInstanceAnswerId, x.CustomerAnswerInstanceFormId },
                        principalTable: "customer_answer",
                        principalColumns: new[] { "event_id", "question_id", "answer_id", "form_id" },
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_answer_answer_id",
                table: "answer",
                column: "answer_id");

            migrationBuilder.CreateIndex(
                name: "IX_company_pib",
                table: "company",
                column: "pib");

            migrationBuilder.CreateIndex(
                name: "IX_customer_customer_id",
                table: "customer",
                column: "customer_id");

            migrationBuilder.CreateIndex(
                name: "IX_customer_email",
                table: "customer",
                column: "email");

            migrationBuilder.CreateIndex(
                name: "IX_customer_answer_customer_id",
                table: "customer_answer",
                column: "customer_id");

            migrationBuilder.CreateIndex(
                name: "IX_customer_answer_form_id",
                table: "customer_answer",
                column: "form_id");

            migrationBuilder.CreateIndex(
                name: "IX_discount_product_id",
                table: "discount",
                column: "product_id");

            migrationBuilder.CreateIndex(
                name: "IX_event_event_type_id",
                table: "event",
                column: "event_type_id");

            migrationBuilder.CreateIndex(
                name: "IX_form_qr_code_id",
                table: "form",
                column: "qr_code_id");

            migrationBuilder.CreateIndex(
                name: "IX_offer_by_company_product_id_offer_id",
                table: "offer_by_company",
                columns: new[] { "product_id", "offer_id" });

            migrationBuilder.CreateIndex(
                name: "IX_question_question_type_id",
                table: "question",
                column: "question_type_id");

            migrationBuilder.CreateIndex(
                name: "IX_reservation_pib",
                table: "reservation",
                column: "pib");

            migrationBuilder.CreateIndex(
                name: "IX_reservation_product_id",
                table: "reservation",
                column: "product_id");

            migrationBuilder.CreateIndex(
                name: "IX_text_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAnswerId_CustomerA~",
                table: "text_customer_answer",
                columns: new[] { "CustomerAnswerInstanceEventId", "CustomerAnswerInstanceQuestionId", "CustomerAnswerInstanceAnswerId", "CustomerAnswerInstanceFormId" });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "discount");

            migrationBuilder.DropTable(
                name: "event_location");

            migrationBuilder.DropTable(
                name: "location");

            migrationBuilder.DropTable(
                name: "meeting");

            migrationBuilder.DropTable(
                name: "offer_by_company");

            migrationBuilder.DropTable(
                name: "reservation");

            migrationBuilder.DropTable(
                name: "sent_company_email");

            migrationBuilder.DropTable(
                name: "sent_personal_email");

            migrationBuilder.DropTable(
                name: "text_customer_answer");

            migrationBuilder.DropTable(
                name: "shopping_location");

            migrationBuilder.DropTable(
                name: "offer");

            migrationBuilder.DropTable(
                name: "customer_answer");

            migrationBuilder.DropTable(
                name: "company");

            migrationBuilder.DropTable(
                name: "product");

            migrationBuilder.DropTable(
                name: "answer");

            migrationBuilder.DropTable(
                name: "customer");

            migrationBuilder.DropTable(
                name: "form");

            migrationBuilder.DropTable(
                name: "question");

            migrationBuilder.DropTable(
                name: "personal_email");

            migrationBuilder.DropTable(
                name: "qr_code");

            migrationBuilder.DropTable(
                name: "event");

            migrationBuilder.DropTable(
                name: "question_type");

            migrationBuilder.DropTable(
                name: "event_type");
        }
    }
}
