using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LePhamPhuongNam.Models;

namespace LePhamPhuongNam.Controllers
{
    public class HomeController : Controller

    {
        dbFilmModelDataContext data = new dbFilmModelDataContext();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(FormCollection collection, KhachHang kh)
        {
            var E_makh = collection["makh"];
            var E_hoten = collection["hoten"];
            var E_matkhau = collection["matkhau"];
            var E_sdt = collection["dienthoai"];
            var E_diachi = String.Format(collection["diachi"]);
            if (string.IsNullOrEmpty(E_hoten))
            {
                ViewData["Error"] = "Nhập Họ Tên";
            }
            else
            {
                kh.hoten = E_hoten.ToString();
                kh.matkhau = E_matkhau.ToString();
                kh.diachi = E_diachi.ToString();
                kh.dienthoai = E_sdt;
                data.KhachHangs.InsertOnSubmit(kh);
                data.SubmitChanges();
                return RedirectToAction("Index");
            }

            return View();
        }
    }
}