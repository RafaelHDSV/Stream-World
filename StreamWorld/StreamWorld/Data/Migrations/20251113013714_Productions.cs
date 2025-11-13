using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StreamWorld.Data.Migrations
{
    /// <inheritdoc />
    public partial class Productions : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Artist",
                columns: table => new
                {
                    _id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nome = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    birthdate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    countryBirth = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    photo = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Artist", x => x._id);
                });

            migrationBuilder.CreateTable(
                name: "Genre",
                columns: table => new
                {
                    _id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Genre", x => x._id);
                });

            migrationBuilder.CreateTable(
                name: "Production",
                columns: table => new
                {
                    _id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    titulo = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    releaseDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    director = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    coverPhoto = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Production", x => x._id);
                });

            migrationBuilder.CreateTable(
                name: "ProductionsArtist",
                columns: table => new
                {
                    productionId = table.Column<int>(type: "int", nullable: false),
                    artistsId = table.Column<int>(type: "int", nullable: false),
                    characterName = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductionsArtist", x => new { x.productionId, x.artistsId });
                    table.ForeignKey(
                        name: "FK_ProductionsArtist_Artist_artistsId",
                        column: x => x.artistsId,
                        principalTable: "Artist",
                        principalColumn: "_id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ProductionsArtist_Production_productionId",
                        column: x => x.productionId,
                        principalTable: "Production",
                        principalColumn: "_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ProductionsGenre",
                columns: table => new
                {
                    productionId = table.Column<int>(type: "int", nullable: false),
                    genresId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductionsGenre", x => new { x.productionId, x.genresId });
                    table.ForeignKey(
                        name: "FK_ProductionsGenre_Genre_genresId",
                        column: x => x.genresId,
                        principalTable: "Genre",
                        principalColumn: "_id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ProductionsGenre_Production_productionId",
                        column: x => x.productionId,
                        principalTable: "Production",
                        principalColumn: "_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ProductionsArtist_artistsId",
                table: "ProductionsArtist",
                column: "artistsId");

            migrationBuilder.CreateIndex(
                name: "IX_ProductionsGenre_genresId",
                table: "ProductionsGenre",
                column: "genresId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ProductionsArtist");

            migrationBuilder.DropTable(
                name: "ProductionsGenre");

            migrationBuilder.DropTable(
                name: "Artist");

            migrationBuilder.DropTable(
                name: "Genre");

            migrationBuilder.DropTable(
                name: "Production");
        }
    }
}
