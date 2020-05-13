using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LibraryManagementSystem.Models;

namespace LibraryManagementSystem.Controllers
{
    public class ChangePasswordController : Controller
    {
        private static List <admin> admins;
        // GET: ChangePassword
        public ActionResult Index(int id)
        {
            return View();
        }
        public ActionResult Edit(int id)
        {
            admin admin = admins.Single(a => a.id == id);
            return View();
        }

        // POST: ChangePassword/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, admin admin)
        {
            try
            {
                admin oldadmin = admins.Single(a => a.id == id);
                oldadmin.Password = admin.Password;
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}