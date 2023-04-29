using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace dack.Controllers
{
    public class CartController1 : Controller
    {
        // GET: CartController1
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Index1()
        {
            return View();
        }
        public ActionResult Index2()
        {
            return View();
        }

        public ActionResult Index3()
        {
            return View();
        }
        public ActionResult Index8()
        {
            return View();
        }
        public ActionResult Index9()
        {
            return View();
        }
        public ActionResult Index10()
        {
            return View();
        }
        public ActionResult Index11()
        {
            return View();
        }
        // GET: CartController1/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }
        public ActionResult Details1(int id)
        {
            return View();
        }
        public ActionResult Details2(int id)
        {
            return View();
        }
        public ActionResult Details3(int id)
        {
            return View();
        }
        public ActionResult Details4(int id)
        {
            return View();
        }
        public ActionResult Details5(int id)
        {
            return View();
        }
        public ActionResult Details6(int id)
        {
            return View();
        }
        public ActionResult Details7(int id)
        {
            return View();
        }
        // GET: CartController1/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CartController1/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: CartController1/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: CartController1/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: CartController1/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: CartController1/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
