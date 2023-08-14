using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using EventApplicationCore.Filters;
using EventApplicationCore.Interface;
using EventApplicationCore.Model;
using Microsoft.AspNetCore.Http;
using EventApplicationCore.Library;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EventApplicationCore.Controllers
{
 
    public class CustomerController : Controller
    {
        private readonly ILogin _ILogin;
        private readonly IRegistration _IRegistration;
        public CustomerController(ILogin ILogin, IRegistration IRegistration)
        {
            _ILogin = ILogin;
            _IRegistration = IRegistration;
        }
        [HttpGet]
        public IActionResult GetList()
        {
            //string dateString = date;
            //DateTime dates = DateTime.Parse(dateString);
            return View();
        }
        // GET: /<controller>/ Userinformation
        public IActionResult Dashboard()
        {
            return View();
        }

        [HttpGet]
        [ValidateUserSession]
        public IActionResult ChangePassword()
        {
            return View(new ChangePasswordModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateUserSession]
        public IActionResult ChangePassword(ChangePasswordModel ChangePasswordModel)
        {
            if (!ModelState.IsValid)
            {
                return View(ChangePasswordModel);
            }

            var password = EncryptionLibrary.EncryptText(ChangePasswordModel.Password);
            var registrationModel = _IRegistration.Userinformation(Convert.ToInt32(HttpContext.Session.GetString("UserID")));

            if (registrationModel.Password == password)
            {
                var registration = new Registration();
                registration.Password = EncryptionLibrary.EncryptText(ChangePasswordModel.NewPassword);
                registration.ID = Convert.ToInt32(HttpContext.Session.GetString("UserID"));
                var result = _ILogin.UpdatePassword(registration);

                if (result)
                {
                    TempData["MessageUpdate"] = "Password Updated Successfully";
                    ModelState.Clear();
                    return View(new ChangePasswordModel());
                }
                else
                {
                    return View(ChangePasswordModel);
                }
            }
            else
            {
                TempData["MessageUpdate"] = "Invalid Password";
                return View(ChangePasswordModel);
            }
        }
    }
}
