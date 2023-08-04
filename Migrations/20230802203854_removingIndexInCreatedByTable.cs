using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class removingIndexInCreatedByTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_scanned_by_qr_code_id",
                table: "scanned_by");

            migrationBuilder.DropIndex(
                name: "IX_scanned_by_qr_code_id_sutomer_id",
                table: "scanned_by");

            migrationBuilder.DropIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by");

            migrationBuilder.CreateIndex(
                name: "IX_scanned_by_qr_code_id",
                table: "scanned_by",
                column: "qr_code_id",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by",
                column: "sutomer_id",
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_scanned_by_qr_code_id",
                table: "scanned_by");

            migrationBuilder.DropIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by");

            migrationBuilder.CreateIndex(
                name: "IX_scanned_by_qr_code_id",
                table: "scanned_by",
                column: "qr_code_id");

            migrationBuilder.CreateIndex(
                name: "IX_scanned_by_qr_code_id_sutomer_id",
                table: "scanned_by",
                columns: new[] { "qr_code_id", "sutomer_id" },
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_scanned_by_sutomer_id",
                table: "scanned_by",
                column: "sutomer_id");
        }
    }
}
