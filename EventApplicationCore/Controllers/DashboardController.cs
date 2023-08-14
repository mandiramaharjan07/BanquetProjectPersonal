using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using EventApplicationCore.Filters;
using EventApplicationCore.Model;
using System.Net;
using EventApplicationCore.Interface;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EventApplicationCore.Controllers
{
    
    public class DashboardController : Controller
    {
        private readonly IDashboard _IDashboard;

        public DashboardController(IDashboard IDashboard)
        {
            _IDashboard = IDashboard;
        }

        // POST: /<controller>/
        [HttpPost]
        public ActionResult GetList(string date,string location)
        {
            string dateString = date;
            DateTime dates = DateTime.Parse(dateString);
            var check = _IDashboard.GetList(dates,location);
            return View("Dashboard",check);
        }

    }
}
