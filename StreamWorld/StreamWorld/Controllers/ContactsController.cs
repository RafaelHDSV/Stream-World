using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StreamWorld.Data;
using StreamWorld.Models;

namespace StreamWorld.Controllers
{
    public class ContactsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ContactsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Contacts
        [Authorize]
        public async Task<IActionResult> Index()
        {
            var mensagens = await _context.Contact
                .OrderByDescending(c => c.submissionDate)
                .ToListAsync();

            return View(mensagens);
        }

        // GET: Contacts/Details/5
        [Authorize]
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contact = await _context.Contact
                .FirstOrDefaultAsync(m => m._id == id);
            if (contact == null)
            {
                return NotFound();
            }

            return View(contact);
        }

        // GET: Contacts/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Contacts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("_id,name,email,subject,message,submissionDate")] Contact contact)
        {
            if (ModelState.IsValid)
            {
                contact.submissionDate = DateTime.Now;

                _context.Add(contact);
                await _context.SaveChangesAsync();

                TempData["SuccessMessage"] = "Sua mensagem foi enviada com sucesso!";

                return RedirectToAction(nameof(Create));
            }

            return View(contact);
        }
    }
}
