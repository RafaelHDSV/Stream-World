using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StreamWorld.Data.Migrations
{
    /// <inheritdoc />
    public partial class GenresArtists : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "characterName",
                table: "ProductionsArtist");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "characterName",
                table: "ProductionsArtist",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
