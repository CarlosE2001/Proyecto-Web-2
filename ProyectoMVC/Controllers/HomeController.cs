using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProyectoMVC.Contexts;

namespace ProyectoMVC.Controllers {
    public class HomeController : Controller {
        
        public ActionResult Index() {
            ViewBag.miNombre = "Carlos";
            var pingus = context.Autor.ToList();
            return View();
        }

        public ActionResult About() {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact() {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}