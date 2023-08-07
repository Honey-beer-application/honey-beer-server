using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class RemovingColumnsInTextCustomerAnswerTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_text_customer_answer_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAn~",
                table: "text_customer_answer");

            migrationBuilder.DropIndex(
                name: "IX_text_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAnswerId_CustomerA~",
                table: "text_customer_answer");

            migrationBuilder.DropColumn(
                name: "CustomerAnswerInstanceAnswerId",
                table: "text_customer_answer");

            migrationBuilder.DropColumn(
                name: "CustomerAnswerInstanceEventId",
                table: "text_customer_answer");

            migrationBuilder.DropColumn(
                name: "CustomerAnswerInstanceFormId",
                table: "text_customer_answer");

            migrationBuilder.DropColumn(
                name: "CustomerAnswerInstanceQuestionId",
                table: "text_customer_answer");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<long>(
                name: "CustomerAnswerInstanceAnswerId",
                table: "text_customer_answer",
                type: "bigint",
                nullable: false,
                defaultValue: 0L);

            migrationBuilder.AddColumn<long>(
                name: "CustomerAnswerInstanceEventId",
                table: "text_customer_answer",
                type: "bigint",
                nullable: false,
                defaultValue: 0L);

            migrationBuilder.AddColumn<long>(
                name: "CustomerAnswerInstanceFormId",
                table: "text_customer_answer",
                type: "bigint",
                nullable: false,
                defaultValue: 0L);

            migrationBuilder.AddColumn<long>(
                name: "CustomerAnswerInstanceQuestionId",
                table: "text_customer_answer",
                type: "bigint",
                nullable: false,
                defaultValue: 0L);

            migrationBuilder.CreateIndex(
                name: "IX_text_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAnswerId_CustomerA~",
                table: "text_customer_answer",
                columns: new[] { "CustomerAnswerInstanceEventId", "CustomerAnswerInstanceQuestionId", "CustomerAnswerInstanceAnswerId", "CustomerAnswerInstanceFormId" });

            migrationBuilder.AddForeignKey(
                name: "FK_text_customer_answer_customer_answer_CustomerAnswerInstanceEventId_CustomerAnswerInstanceQuestionId_CustomerAnswerInstanceAn~",
                table: "text_customer_answer",
                columns: new[] { "CustomerAnswerInstanceEventId", "CustomerAnswerInstanceQuestionId", "CustomerAnswerInstanceAnswerId", "CustomerAnswerInstanceFormId" },
                principalTable: "customer_answer",
                principalColumns: new[] { "event_id", "question_id", "answer_id", "form_id" },
                onDelete: ReferentialAction.Cascade);
        }
    }
}
