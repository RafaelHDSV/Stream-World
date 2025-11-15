using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using StreamWorld.Data;
using StreamWorld.Models;
using System.Diagnostics;

namespace StreamWorld.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            var lastProductions = await _context.Production
                .OrderByDescending(p => p.createdAt)
                .Take(10)
                .ToListAsync();

            return View(lastProductions);
        }

        public IActionResult Credit()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel
            {
                RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier
            });
        }
    }
}
