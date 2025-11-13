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

        // GET: Productions
        public async Task<IActionResult> Index()
        {
            return View(await _context.Production.ToListAsync());
        }

        // GET: Productions/Details/5
        public async Task<IActionResult> Details(int? id)
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

        // GET: Productions/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Productions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("_id,titulo,releaseDate,director,coverPhoto")] Production production)
        {
            if (ModelState.IsValid)
            {
                _context.Add(production);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(production);
        }

        // GET: Productions/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var production = await _context.Production.FindAsync(id);
            if (production == null)
            {
                return NotFound();
            }
            return View(production);
        }

        // POST: Productions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("_id,titulo,releaseDate,director,coverPhoto")] Production production)
        {
            if (id != production._id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(production);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductionExists(production._id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(production);
        }

        // GET: Productions/Delete/5
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

        // POST: Productions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var production = await _context.Production.FindAsync(id);
            if (production != null)
            {
                _context.Production.Remove(production);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductionExists(int id)
        {
            return _context.Production.Any(e => e._id == id);
        }
    }
}
