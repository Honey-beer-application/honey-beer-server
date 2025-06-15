using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class droppingMeetingTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "meeting");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
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
        }
    }
}
