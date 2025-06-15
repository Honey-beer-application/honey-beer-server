using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class FixingIndexInScannedByTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by");

            migrationBuilder.CreateIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by",
                column: "sutomer_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by");

            migrationBuilder.CreateIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by",
                column: "sutomer_id",
                unique: true);
        }
    }
}
