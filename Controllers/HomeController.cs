using LibraryManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LibraryManagementSystem.Controllers
{
    public class HomeController : Controller
    {
        private LibrarySystemEntities1 db = new LibrarySystemEntities1();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult Login(admin log)
        {
            if (ModelState.IsValid)
            {
                var details = (from userlist in db.admins
                               where userlist.UserName == log.UserName && userlist.Password == log.Password
                               select new
                               {
                                   userlist.id,
                                   userlist.UserName
                               }).ToList();
                if (details.FirstOrDefault() != null)
                {
                    Session["id"] = details.FirstOrDefault().id;
                    Session["UserName"] = details.FirstOrDefault().UserName;
                    return RedirectToAction("welcome", "Home");
                }
            }
            else
            {
                ModelState.AddModelError("", "invalid");
            }
            return View(log);
        }
        public ActionResult welcome()
        {
            return View();
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}