using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LePhamPhuongNam.Models;

namespace LePhamPhuongNam.Controllers
{
    public class FilmController : Controller
    {
        // GET: Film
        dbFilmModelDataContext data = new dbFilmModelDataContext();
        public ActionResult Index()
        {
            var all_film = from s in data.Phims select s;
            return View(all_film);
        }
    }
}