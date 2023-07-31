using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class CreatingTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "product_in_location",
                columns: table => new
                {
                    pib = table.Column<long>(type: "bigint", nullable: false),
                    shopping_location_id = table.Column<long>(type: "bigint", nullable: false),
                    product_id = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_product_in_location", x => new { x.pib, x.shopping_location_id, x.product_id });
                    table.ForeignKey(
                        name: "FK_product_in_location_product_product_id",
                        column: x => x.product_id,
                        principalTable: "product",
                        principalColumn: "product_id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_product_in_location_shopping_location_pib_shopping_location_id",
                        columns: x => new { x.pib, x.shopping_location_id },
                        principalTable: "shopping_location",
                        principalColumns: new[] { "pib", "shopping_location_id" },
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_product_in_location_product_id",
                table: "product_in_location",
                column: "product_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "product_in_location");
        }
    }
}
