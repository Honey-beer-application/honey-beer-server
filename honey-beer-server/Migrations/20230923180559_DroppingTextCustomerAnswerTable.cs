using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class DroppingTextCustomerAnswerTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "text_customer_answer");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "text_customer_answer",
                columns: table => new
                {
                    event_id = table.Column<long>(type: "bigint", nullable: false),
                    question_id = table.Column<long>(type: "bigint", nullable: false),
                    answer_id = table.Column<long>(type: "bigint", nullable: false),
                    form_id = table.Column<long>(type: "bigint", nullable: false),
                    CustomerAnswerInstanceEventId = table.Column<long>(type: "bigint", nullable: true),
                    CustomerAnswerInstanceQuestionId = table.Column<long>(type: "bigint", nullable: true),
                    CustomerAnswerInstanceAnswerId = table.Column<long>(type: "bigint", nullable: true),
                    CustomerAnswerInstanceFormId = table.Column<long>(type: "bigint", nullable: true),
                    text = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_text_customer_answer", x => new { x.event_id, x.question_id, x.answer_id, x.form_id });
                    table.ForeignKey(
                        name: "FK_text_customer_answer_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAn~",
                        columns: x => new { x.CustomerAnswerInstanceEventId, x.CustomerAnswerInstanceQuestionId, x.CustomerAnswerInstanceAnswerId, x.CustomerAnswerInstanceFormId },
                        principalTable: "customer_answer",
                        principalColumns: new[] { "event_id", "question_id", "answer_id", "form_id" });
                });

            migrationBuilder.CreateIndex(
                name: "IX_text_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAnswerId_CustomerA~",
                table: "text_customer_answer",
                columns: new[] { "CustomerAnswerInstanceEventId", "CustomerAnswerInstanceQuestionId", "CustomerAnswerInstanceAnswerId", "CustomerAnswerInstanceFormId" });
        }
    }
}
