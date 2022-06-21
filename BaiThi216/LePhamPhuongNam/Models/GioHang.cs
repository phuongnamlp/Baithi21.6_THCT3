using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using LePhamPhuongNam.Models;

namespace LePhamPhuongNam.Models
{
    public class Giohang
    {
        dbFilmModelDataContext data = new dbFilmModelDataContext();
        [Display(Name = "Mã Lịch Chiếu")]
        public string malich { get; set; }
        [Display(Name = "Mã Phim")]
        public int maphim { get; set; }
        [Display(Name = "Giá")]
        public Double gia { get; set; }
        [Display(Name = "Số lượng")]
        public int iSoLuong { get; set; }
        [Display(Name = "Thành tiền")]
        public Double dThanhtien
        {
            get { return iSoLuong * gia; }
        }
        public Giohang(string malich)
        {
            this.malich = malich;
            LichChieu lichChieu = data.LichChieus.Single(n => n.malich == malich);
            maphim = Convert.ToInt32(lichChieu.maphim);
            gia = double.Parse(lichChieu.gia.ToString());
            iSoLuong = 1;
        }
    }
}