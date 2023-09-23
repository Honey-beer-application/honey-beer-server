using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class RemovingTextCutomerAnswerTable : Migration
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
                    text = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_text_customer_answer", x => new { x.event_id, x.question_id, x.answer_id, x.form_id });
                });
        }
    }
}
