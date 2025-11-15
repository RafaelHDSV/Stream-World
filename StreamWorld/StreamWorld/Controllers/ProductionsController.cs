using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StreamWorld.Data;
using StreamWorld.Models;

namespace StreamWorld.Controllers
{
    public class ProductionsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ProductionsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Production
        public async Task<IActionResult> Index()
        {
            var productions = await _context.Production
                .Include(p => p.productionsGenres)
                    .ThenInclude(pg => pg.genres)
                .Include(p => p.productionsArtists)
                    .ThenInclude(pa => pa.artists)
                .ToListAsync();

            return View(productions);
        }

        // GET: Production/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var production = await _context.Production
            .Include(p => p.productionsGenres)
                .ThenInclude(pg => pg.genres)
            .Include(p => p.productionsArtists)
                .ThenInclude(pa => pa.artists)
            .FirstOrDefaultAsync(m => m._id == id);
            if (production == null)
            {
                return NotFound();
            }

            ViewBag.Genres = new SelectList(_context.Genre, "_id", "name");
            ViewBag.Artist = new SelectList(_context.Artist, "_id", "name");
            return View(production);
        }

        // GET: Production/Create
        public IActionResult Create()
        {
            ViewBag.Genres = new SelectList(_context.Genre, "_id", "name");
            ViewBag.Artist = new SelectList(_context.Artist, "_id", "name");
            return View();
        }

        // POST: Production/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("titulo,releaseDate,type,director,coverPhoto")] Production production, int[] selectedGenres, int[] selectedArtists, string[] characterNames)
        {
            if (ModelState.IsValid)
            {
                production.createdAt = DateTime.UtcNow;

                // Salva a produção primeiro
                _context.Add(production);
                await _context.SaveChangesAsync();

                // Relaciona Gêneros
                if (selectedGenres != null)
                {
                    foreach (var genreId in selectedGenres)
                    {
                        _context.ProductionsGenre.Add(new ProductionsGenre
                        {
                            productionId = production._id,
                            genresId = genreId
                        });
                    }

                    await _context.SaveChangesAsync();
                }

                // Relaciona Artistas (sem personagem ainda)
                if (selectedArtists != null)
                {
                    for (int i = 0; i < selectedArtists.Length; i++)
                    {
                        var artistId = selectedArtists[i];
                        string? character = null;
                        if (characterNames != null && i < characterNames.Length)
                            character = characterNames[i];

                        _context.ProductionsArtist.Add(new ProductionsArtist
                        {
                            productionId = production._id,
                            artistsId = artistId,
                            characterName = character
                        });
                    }

                    await _context.SaveChangesAsync();
                }

                return RedirectToAction(nameof(Index));
            }

            return View(production);
        }

        // GET: Production/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var production = await _context.Production
            .Include(p => p.productionsGenres)
            .Include(p => p.productionsArtists)
            .FirstOrDefaultAsync(p => p._id == id);
            if (production == null)
            {
                return NotFound();
            }

            ViewBag.Genres = new MultiSelectList(
                _context.Genre,
                "_id",
                "name",
                production.productionsGenres.Select(pg => pg.genresId)
            );
            ViewBag.Artist = new MultiSelectList(
                _context.Artist,
                "_id",
                "name",
                production.productionsArtists.Select(pa => pa.artistsId)
            );
            return View(production);
        }

        // POST: Production/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Production production, int[] selectedGenres, int[] selectedArtists, string[] characterNames)
        {
            if (id != production._id)
                return NotFound();

            if (ModelState.IsValid)
            {
                try
                {
                    // Carrega do banco com os relacionamentos
                    var dbProduction = await _context.Production
                        .Include(p => p.productionsGenres)
                        .Include(p => p.productionsArtists)
                        .FirstOrDefaultAsync(p => p._id == id);

                    if (dbProduction == null)
                        return NotFound();

                    // Atualiza os campos da produção
                    dbProduction.titulo = production.titulo;
                    dbProduction.releaseDate = production.releaseDate;
                    dbProduction.type = production.type;
                    dbProduction.director = production.director;
                    dbProduction.coverPhoto = production.coverPhoto;

                    // 1️⃣ Remove todos os relacionamentos antigos
                    _context.ProductionsGenre.RemoveRange(dbProduction.productionsGenres);
                    _context.ProductionsArtist.RemoveRange(dbProduction.productionsArtists);
                    await _context.SaveChangesAsync();

                    // 2️⃣ Adiciona gêneros novos
                    if (selectedGenres != null)
                    {
                        foreach (var genreId in selectedGenres)
                        {
                            _context.ProductionsGenre.Add(new ProductionsGenre
                            {
                                productionId = dbProduction._id,
                                genresId = genreId
                            });
                        }
                    }

                    // 3️⃣ Adiciona artistas novos
                    if (selectedArtists != null)
                    {
                        for (int i = 0; i < selectedArtists.Length; i++)
                        {
                            var artistId = selectedArtists[i];
                            string? character = null;
                            if (characterNames != null && i < characterNames.Length)
                                character = characterNames[i];

                            _context.ProductionsArtist.Add(new ProductionsArtist
                            {
                                productionId = dbProduction._id,
                                artistsId = artistId,
                                characterName = character
                            });
                        }
                    }

                    await _context.SaveChangesAsync();
                }
                catch
                {
                    throw;
                }

                return RedirectToAction(nameof(Index));
            }

            return View(production);
        }

        // GET: Production/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var production = await _context.Production
                .FirstOrDefaultAsync(m => m._id == id);
            if (production == null)
            {
                return NotFound();
            }

            return View(production);
        }

        // POST: Production/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var production = await _context.Production
                .Include(p => p.productionsGenres)
                .Include(p => p.productionsArtists)
                .FirstOrDefaultAsync(p => p._id == id);
            if (production != null)
            {
                _context.ProductionsGenre.RemoveRange(production.productionsGenres);
                _context.ProductionsArtist.RemoveRange(production.productionsArtists);
                _context.Production.Remove(production);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Search(string query)
        {
            IQueryable<Production> productions = _context.Production;

            if (!string.IsNullOrWhiteSpace(query))
            {
                productions = productions
                    .Include(p => p.productionsArtists)
                        .ThenInclude(pa => pa.artists)
                    .Include(p => p.productionsGenres)
                        .ThenInclude(pg => pg.genres)
                    .Where(p => 
                    p.titulo.Contains(query) ||
                    p.productionsArtists.Any(a => a.artists.name.ToLower().Contains(query)) ||
                    p.productionsGenres.Any(g => g.genres.name.ToLower().Contains(query))
                );
            }

            var results = productions
            .OrderBy(a => a.titulo)
            .ToList();

            return View(results);
        }

        private bool ProductionExists(int id)
        {
            return _context.Production.Any(e => e._id == id);
        }
    }
}
