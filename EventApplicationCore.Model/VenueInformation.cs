using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventApplicationCore.Model
{
    public class VenueInformation
    {
        public int TotalVenues { get; set; }
        public int BookedVenues { get; set; }
        public int AvailableVenues { get; set; }
        public List<VenuePiechart> piedata { get; set; }
        public List<FlowerPiechart> flowerpie { get; set; }
        public List<EquipmentPiechart> equipmentpie { get; set; }
        public List<LightPiechart> lightpie { get; set; }
        public List<TotalRev> TotalRevs { get; set; }

    }
    public class VenuePiechart
    {
        public DateTime? BookingDate { get; set; }
        public string BookingApproval { get; set; }

        public DateTime CreatedDate { get; set; }
        public string VenueName { get; set; }
        public int? VenueCost { get; set; }
        public string FlowerName { get; set; }
        public int? FlowerCost { get; set; }
    }  
    public class FlowerPiechart
    {
        public DateTime? BookingDate { get; set; }
        public string BookingApproval { get; set; }

        public DateTime CreatedDate { get; set; }
       
        public string FlowerName { get; set; }
        public int? FlowerCost { get; set; }
    }
    public class EquipmentPiechart
    {
        public DateTime? BookingDate { get; set; }
        public string BookingApproval { get; set; }

        public DateTime CreatedDate { get; set; }
       
        public string EquipmentName { get; set; }
        public int? EquipmentCost { get; set; }
    }
    public class LightPiechart
    {
        public DateTime? BookingDate { get; set; }
        public string BookingApproval { get; set; }

        public DateTime CreatedDate { get; set; }
       
        public string LightName { get; set; }
        public int? LightCost { get; set; }
    }

    public class TotalRev
    {
        public DateTime? BookingDate { get; set; }
        public Decimal ? TotalRevCost { get; set; }

        public int? FlowerCost { get; set; }
        public int? EquipmentCost { get; set; }
        public int? VenueCost { get; set; }
    }



}
