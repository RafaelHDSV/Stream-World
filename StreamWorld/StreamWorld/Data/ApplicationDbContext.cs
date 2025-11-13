using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using StreamWorld.Models;

namespace StreamWorld.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // 🔑 Chave composta para a tabela de ligação Produções ↔ Artistas
            modelBuilder.Entity<ProductionsArtist>()
                .HasKey(pa => new { pa.productionId, pa.artistsId });

            modelBuilder.Entity<ProductionsArtist>()
                .HasOne(pa => pa.production)
                .WithMany(p => p.productionsArtists)
                .HasForeignKey(pa => pa.productionId);

            modelBuilder.Entity<ProductionsArtist>()
                .HasOne(pa => pa.artists)
                .WithMany(a => a.productionsArtists)
                .HasForeignKey(pa => pa.artistsId);

            // 🔑 Chave composta para Produções ↔ Gêneros
            modelBuilder.Entity<ProductionsGenre>()
                .HasKey(pg => new { pg.productionId, pg.genresId });

            modelBuilder.Entity<ProductionsGenre>()
                .HasOne(pg => pg.production)
                .WithMany(p => p.productionsGenres)
                .HasForeignKey(pg => pg.productionId);

            modelBuilder.Entity<ProductionsGenre>()
                .HasOne(pg => pg.genres)
                .WithMany(g => g.productionsGenres)
                .HasForeignKey(pg => pg.genresId);
        }
        public DbSet<StreamWorld.Models.Production> Production { get; set; } = default!;
        public DbSet<StreamWorld.Models.Artist> Artist { get; set; } = default!;
        public DbSet<StreamWorld.Models.Genre> Genre { get; set; } = default!;
        public DbSet<StreamWorld.Models.Contact> Contact { get; set; } = default!;
    }
}
