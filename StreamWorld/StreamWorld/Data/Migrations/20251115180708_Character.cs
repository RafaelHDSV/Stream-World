using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StreamWorld.Data.Migrations
{
    /// <inheritdoc />
    public partial class Character : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "characterName",
                table: "ProductionsArtist",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "characterName",
                table: "ProductionsArtist");
        }
    }
}
