using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EventApplicationCore.Model;
using EventApplicationCore.Concrete;
using Microsoft.AspNetCore.Mvc;
using EventApplicationCore.Filters;
using EventApplicationCore.Interface;



// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EventApplicationCore.Controllers
{
    [ValidateAdminSession]
    public class AdminController : Controller
    {
        private readonly IAdminDashboard _IAdminDashboard;
       

        public AdminController(IAdminDashboard IAdminDashboard)
        {
            _IAdminDashboard = IAdminDashboard;
        }

        // GET: /<controller>/
        public IActionResult Dashboard()
        {
            VenueInformation venueInfo = _IAdminDashboard.GetVenueInformation();
            List<VenuePiechart> pie = _IAdminDashboard.GetVenueForPieChart();
            List<FlowerPiechart> flowers = _IAdminDashboard.GetFlowerForPieChart();
            List<EquipmentPiechart> equipments = _IAdminDashboard.GetEquipmentForPieChart();
            List<LightPiechart> light = _IAdminDashboard.GetLightForPieChart();
            List<TotalRev> rev = _IAdminDashboard.getTotal();

            venueInfo.piedata = pie;
            venueInfo.flowerpie = flowers;
            venueInfo.equipmentpie = equipments;
            venueInfo.lightpie = light;
            venueInfo.TotalRevs = rev.Select(a=> new TotalRev
            {
                BookingDate = a.BookingDate,
                TotalRevCost=a.FlowerCost+a.VenueCost+a.EquipmentCost
            }).ToList();
            return View(venueInfo);
        }
  
    }
}
