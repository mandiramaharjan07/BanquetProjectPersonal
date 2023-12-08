using EventApplicationCore.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EventApplicationCore.Model;

namespace EventApplicationCore.Concrete
{
    public class AdminDashboardConcrete : IAdminDashboard
    {
        private DatabaseContext _context;



        public AdminDashboardConcrete(DatabaseContext context)
        {
            _context = context;
        }


        public VenueInformation GetVenueInformation()
        {
            VenueInformation venueInfo = new VenueInformation();

            // Calculate counts
            venueInfo.TotalVenues = _context.Venue.Count();
            venueInfo.BookedVenues = _context.BookingVenue.Select(b => b.BookingID).Distinct().Count();
            venueInfo.AvailableVenues = venueInfo.TotalVenues - venueInfo.BookedVenues;

            return venueInfo;
        }
        public List<VenuePiechart> GetVenueForPieChart()
        {
            var result = from b in _context.BookingVenue
                         join v in _context.Venue on b.VenueID equals v.VenueID
                         join det in _context.BookingDetails on b.BookingID equals det.BookingID
                         where det.BookingApproval == "A"
                         select new VenuePiechart()
                         {
                             BookingDate = det.BookingDate,
                             BookingApproval = det.BookingApproval,
                             CreatedDate = b.CreatedDate.Value,
                             VenueName = v.VenueName,
                             VenueCost = v.VenueCost
                         };
            return result.ToList();
        }
        public List<FlowerPiechart> GetFlowerForPieChart()
        {
            var result = from b in _context.BookingFlower
                         join v in _context.Flower on b.FlowerID equals v.FlowerID
                         join det in _context.BookingDetails on b.BookingID equals det.BookingID
                         where det.BookingApproval == "A"
                         select new FlowerPiechart()
                         {
                             BookingDate = det.BookingDate,
                             BookingApproval = det.BookingApproval,
                             CreatedDate = b.CreatedDate.Value,
                             FlowerName = v.FlowerName,
                             FlowerCost = v.FlowerCost
                         };

            return result.ToList();
        }
        public List<EquipmentPiechart> GetEquipmentForPieChart()
        {
            var result = from b in _context.BookingEquipment
                         join v in _context.Equipment on b.EquipmentID equals v.EquipmentID
                         join det in _context.BookingDetails on b.BookingID equals det.BookingID
                         where det.BookingApproval == "A"
                         select new EquipmentPiechart()
                         {
                             BookingDate = det.BookingDate,
                             BookingApproval = det.BookingApproval,
                             CreatedDate = b.CreatedDate.Value,
                             EquipmentName = v.EquipmentName,
                             EquipmentCost = v.EquipmentCost
                         };

            return result.ToList();
        }


        public List<LightPiechart> GetLightForPieChart()
        {
            var result = from b in _context.BookingLight
                         join v in _context.Light on b.LightIDSelected equals v.LightID
                         join det in _context.BookingDetails on b.BookingID equals det.BookingID
                         where det.BookingApproval == "A"
                         select new LightPiechart()
                         {
                             BookingDate = det.BookingDate,
                             BookingApproval = det.BookingApproval,
                             CreatedDate = b.CreatedDate.Value,
                             LightName = v.LightName,
                             LightCost = v.LightCost
                         };

            return result.ToList();
        }

        public List<TotalRev> getTotal()
        {
            var result = from det in _context.BookingDetails
                         join bv in _context.BookingVenue on det.BookingID equals bv.BookingID
                         join v in _context.Venue on bv.VenueID equals v.VenueID
                         join be in _context.BookingEquipment on det.BookingID equals be.BookingID
                         join e in _context.Equipment on be.EquipmentID equals e.EquipmentID
                         join bf in _context.BookingFlower on det.BookingID equals bf.BookingID
                         join f in _context.Flower on bf.FlowerID equals f.FlowerID
                         where det.BookingApproval == "A"
                         group new { det, v, e, f } by new { Year = det.BookingDate.Value.Year, Month = det.BookingDate.Value.Month } into grp
                         select new
                         {
                             Year = grp.Key.Year,
                             Month = grp.Key.Month,
                             VenueCost = grp.Sum(x => x.v.VenueCost.Value),
                             EquipmentCost = grp.Sum(x => x.e.EquipmentCost.Value),
                             FlowerCost = grp.Sum(x => x.f.FlowerCost.Value)
                         };


            var test = result.ToList();
            var years = result.GroupBy(a => a.Year).Select(a=>new
            {
                Year = a.Key,
                Months = a.OrderBy(b=>b.Month).Select(c=>new
                {
                    Month = c.Month,
                    Total = c.VenueCost + c.FlowerCost + c.EquipmentCost
                })
            });

            return new List<TotalRev>();

        }
    }
}