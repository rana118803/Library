using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LibraryManagementSystem.Models;

namespace LibraryManagementSystem.Controllers
{
    public class tblbooksController : Controller
    {
        private Model1 db = new Model1();
        private static List <Models.tblbooks> books ;
        // GET: tblbooks
        public ActionResult Index()
        {
            if(books ==null )
            {
                books = new List<tblbooks>();
                Create();

            }
            return View(db.tblbooks.ToList());
        }

        // GET: tblbooks/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblbooks tblbooks = db.tblbooks.Find(id);
            if (tblbooks == null)
            {
                return HttpNotFound();
            }
            return View(tblbooks);
        }

        // GET: tblbooks/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tblbooks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,BookName,CatId,AuthorId,ISBNNumber,BookPrice,RegDate,UpdationDate")] tblbooks tblbooks)
        {
            if (ModelState.IsValid)
            {
                db.tblbooks.Add(tblbooks);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tblbooks);
        }

        // GET: tblbooks/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblbooks tblbooks = db.tblbooks.Find(id);
            if (tblbooks == null)
            {
                return HttpNotFound();
            }
            return View(tblbooks);
        }

        // POST: tblbooks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,BookName,CatId,AuthorId,ISBNNumber,BookPrice,RegDate,UpdationDate")] tblbooks tblbooks)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblbooks).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tblbooks);
        }

        // GET: tblbooks/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblbooks tblbooks = db.tblbooks.Find(id);
            if (tblbooks == null)
            {
                return HttpNotFound();
            }
            return View(tblbooks);
        }

        // POST: tblbooks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblbooks tblbooks = db.tblbooks.Find(id);
            db.tblbooks.Remove(tblbooks);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
