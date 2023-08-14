using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventApplicationCore.Model
{
    
    public class VenueModel
    {
         public int VenueID { get; set; }
        public string VenueName { get; set; }

       
        public int? VenueCost { get; set; }

        public string VenueFilename { get; set; }

        public string VenueFilePath { get; set; }

        public int? Createdby { get; set; }

        public DateTime? Createdate { get; set; }
        public DateTime? BookingDate { get; set; }

        public int? BookingID { get; set; }
    }
}
