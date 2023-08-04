using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class addingMeetingTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "meeting",
                columns: table => new
                {
                    meeting_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    subject = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    start_time = table.Column<DateTime>(type: "datetime2", nullable: false),
                    end_time = table.Column<DateTime>(type: "datetime2", nullable: false),
                    location = table.Column<DateTime>(type: "datetime2", nullable: false),
                    pib = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_meeting", x => x.meeting_id);
                    table.ForeignKey(
                        name: "FK_meeting_company_pib",
                        column: x => x.pib,
                        principalTable: "company",
                        principalColumn: "pib");
                });

            migrationBuilder.CreateIndex(
                name: "IX_meeting_pib",
                table: "meeting",
                column: "pib");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "meeting");
        }
    }
}
