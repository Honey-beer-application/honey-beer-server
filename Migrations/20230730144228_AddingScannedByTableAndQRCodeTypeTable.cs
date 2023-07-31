using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace honey_beer_server_app.Migrations
{
    /// <inheritdoc />
    public partial class AddingScannedByTableAndQRCodeTypeTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "scanned",
                table: "qr_code");

            migrationBuilder.AlterColumn<string>(
                name: "code",
                table: "qr_code",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<long>(
                name: "qr_code_type_id",
                table: "qr_code",
                type: "bigint",
                nullable: false,
                defaultValue: 0L);

            migrationBuilder.CreateTable(
                name: "qr_code_type",
                columns: table => new
                {
                    qr_code_type_id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    qr_code_type_name = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_qr_code_type", x => x.qr_code_type_id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_qr_code_code",
                table: "qr_code",
                column: "code",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_qr_code_qr_code_type_id",
                table: "qr_code",
                column: "qr_code_type_id");

            migrationBuilder.CreateIndex(
                name: "IX_qr_code_type_qr_code_type_name",
                table: "qr_code_type",
                column: "qr_code_type_name",
                unique: true);

            migrationBuilder.AddForeignKey(
                name: "FK_qr_code_qr_code_type_qr_code_type_id",
                table: "qr_code",
                column: "qr_code_type_id",
                principalTable: "qr_code_type",
                principalColumn: "qr_code_type_id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_qr_code_qr_code_type_qr_code_type_id",
                table: "qr_code");

            migrationBuilder.DropTable(
                name: "qr_code_type");

            migrationBuilder.DropIndex(
                name: "IX_qr_code_code",
                table: "qr_code");

            migrationBuilder.DropIndex(
                name: "IX_qr_code_qr_code_type_id",
                table: "qr_code");

            migrationBuilder.DropColumn(
                name: "qr_code_type_id",
                table: "qr_code");

            migrationBuilder.AlterColumn<string>(
                name: "code",
                table: "qr_code",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddColumn<bool>(
                name: "scanned",
                table: "qr_code",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }
    }
}
