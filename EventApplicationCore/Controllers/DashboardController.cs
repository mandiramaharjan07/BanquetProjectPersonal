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
        private readonly IVenue _IVenue;
        public DashboardController(IVenue IVenue, IDashboard IDashboard)
        {
            _IVenue = IVenue;
            _IDashboard = IDashboard;
        }

        // POST: /<controller>/
        [HttpPost]
        public ActionResult GetList(string date, string location)
        {
            string dateString = date;
            DateTime dates = DateTime.Parse(dateString);
            var check = _IDashboard.GetList(dates, location);
            return View("Dashboard", check);
        }

        [HttpPost]
        public JsonResult GetALLAvailableList(string date)
        {
            string dateString = date;
            DateTime dates = DateTime.Parse(dateString);
            var check = _IDashboard.GetList(dates, String.Empty).Select(a => new
            {
                id = a.VenueID,
                name = a.VenueName,
                lat = a.Latitude,
                lon = a.Longitude
            });
            return Json(Newtonsoft.Json.JsonConvert.SerializeObject(check));
        }

        public ActionResult ViewMore(string id)
        {
            try
            {
                if (string.IsNullOrEmpty(id))
                {
                    return RedirectToAction("ViewAllVenues", "AllVenue");
                }

                Venue venueEdit = _IVenue.VenueByID(Convert.ToInt32(id));

                return View(venueEdit);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
