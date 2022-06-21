using LePhamPhuongNam.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LePhamPhuongNam.Controllers
{
    public class LichChieuController : Controller
    {
        // GET: LichChieu
        dbFilmModelDataContext data = new dbFilmModelDataContext();
        public ActionResult ListFilm()
        {
            var all_film = from s in data.LichChieus select s;
            return View(all_film);
        }
    }
}