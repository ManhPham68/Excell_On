﻿using _ExcellOn_.Areas.Admin.Model;
using _ExcellOn_.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _ExcellOn_.Areas.Admin.Controllers
{
    public class Staff_OrderDetailController : BaseController
    {
        private Entities db = new Entities();
        // GET: Admin/Staff_OrderDetail
        [HasPermission(Permission = "OrderDetail_List")]
        public ActionResult Staff_OrderDetailIndex()
        {
            var list_staff_orderdetail = db.Staff_OrderDetail.ToList();
            return View(list_staff_orderdetail);

        }
    }
}