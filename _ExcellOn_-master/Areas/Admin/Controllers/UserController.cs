﻿using _ExcellOn_.Areas.Admin.Model;
using _ExcellOn_.Areas.Admin.ViewModel;
using _ExcellOn_.Models;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _ExcellOn_.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        private Entities db = new Entities();

        // Function Login View
        [HttpGet]
        public ActionResult Login()
        {
            Session["UserName"] = null;
            return View("~/Areas/Admin/Views/User/Login2.cshtml");
        }

        [HttpPost]
        public JsonResult LoginAjax(LoginViewModel loginViewModel)
        {
            if (loginViewModel.UserName != null && loginViewModel.Password != null)
            {
                UserInFo User = db.UserInFoes.Where(x => x.User_Name == loginViewModel.UserName).FirstOrDefault();
                if (User != null)
                {
                    bool test = BCrypt.Net.BCrypt.Verify(loginViewModel.Password, User.User_Password);
                    if (test)
                    {
                        Session["UserName"] = User;

                        // Take permission of current User
                        Permission_Role_Function function = new Permission_Role_Function();
                        List<string> list_permission = function.TakePermission(User);
                        Session["ListPermission"] = list_permission;

                        //Take role of current User
                        List<string> list_role = function.TakeRole(User);
                        Session["ListRole"] = list_role;

                        if (list_role.Contains("Admin"))
                        {
                            return Json("/Admin/AdminHome/DashboardIndex",JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            return Json("/Admin/UserManagement/MyProfile", JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        return Json("Account or Password is not correct !",JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    return Json("Account or Password is not correct !",JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json("Account or Password is not correct !",JsonRequestBehavior.AllowGet);
            }
        }

        // Function Login handle request
        [HttpPost]
        public ActionResult Login(LoginViewModel loginViewModel)
        {
            if (loginViewModel.UserName != null && loginViewModel.Password != null)
            {
                UserInFo User = db.UserInFoes.Where(x => x.User_Name == loginViewModel.UserName).FirstOrDefault();
                if (User != null)
                {
                    bool test = BCrypt.Net.BCrypt.Verify(loginViewModel.Password, User.User_Password);
                    if (test)
                    {
                        Session["UserName"] = User;

                        // Take permission of current User
                        Permission_Role_Function function = new Permission_Role_Function();
                        List<string> list_permission = function.TakePermission(User);
                        Session["ListPermission"] = list_permission;

                        //Take role of current User
                        List<string> list_role = function.TakeRole(User);
                        Session["ListRole"] = list_role;

                        if (list_role.Contains("Admin"))
                        {
                            return Redirect("/Admin/AdminHome/DashboardIndex");
                        }
                        else
                        {
                            return Redirect("/Admin/UserManagement/MyProfile");
                        }
                    }
                    else
                    {
                        ViewBag.message = "Account or Password is not correct !";
                        return View();
                    }
                }
                else
                {
                    ViewBag.message = "Account or Password is not correct !";
                    return View();
                }
            }
            else
            {
                ViewBag.message = "Account or Password is null !";
                return View();
            }
        }

        //function Logout User 
        public ActionResult Logout()
        {
            Session.Clear();
            return Redirect("/AdminLogin");
        }

    }
}