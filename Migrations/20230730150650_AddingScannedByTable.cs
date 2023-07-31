using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class AddingScannedByTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "scanned_by",
                columns: table => new
                {
                    qr_code_id = table.Column<long>(type: "bigint", nullable: false),
                    sutomer_id = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_scanned_by", x => new { x.qr_code_id, x.sutomer_id });
                    table.ForeignKey(
                        name: "FK_scanned_by_customer_sutomer_id",
                        column: x => x.sutomer_id,
                        principalTable: "customer",
                        principalColumn: "customer_id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_scanned_by_qr_code_qr_code_id",
                        column: x => x.qr_code_id,
                        principalTable: "qr_code",
                        principalColumn: "qr_code_id",
                        onDelete: ReferentialAction.Cascade);
                });

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
            migrationBuilder.DropTable(
                name: "scanned_by");
        }
    }
}
