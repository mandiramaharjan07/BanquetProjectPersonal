using EventApplicationCore.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EventApplicationCore.Model;

namespace EventApplicationCore.Concrete
{
    public class DashboardConcrete : IDashboard
    {
        private DatabaseContext _context;

        public DashboardConcrete(DatabaseContext context)
        {
            _context = context;
        }

        public List<VenueModel> GetList(DateTime date,string location)

        {
            var tes = _context.Venue.Where(a => a.Location.Contains(location));
                var listofcities = (from venue in _context.Venue
                                    join booking in _context.BookingVenue on venue.VenueID equals booking.VenueID into bookings                            
                                    from booking in bookings.DefaultIfEmpty()
                                    where booking.BookingID == null && (venue.Location.Contains(location) || venue.VenueName.Contains(location))
                                    select new VenueModel
                                    {
                                        VenueID= venue.VenueID,
                                        VenueName = venue.VenueName,
                                        VenueCost = venue.VenueCost,
                                        VenueFilename = venue.VenueFilename,
                                        VenueFilePath = venue.VenueFilePath,
                                        Createdate = venue.Createdate,
                                        Latitude= venue.Latitude,
                                        Longitude= venue.Longtitude,
                                        ShortDescription = venue.ShortDescription,
                                        LongDescription = venue.LongDescription
                                        
                                    }).Distinct().ToList();

                return listofcities;

                /*var listofcities = (from venue in _context.Venue
                                    join booking  in _context.BookingVenue  on venue.VenueID equals booking.VenueID // yesko satta left join lagau and check where bookingid is null
                                    join details in _context.BookingDetails on booking.BookingID equals details.BookingID// hattaune jastai lagyo
                                    where booking.BookingDate != date
                                    select new VenueModel{
                                        VenueName = venue.VenueName,
                                        VenueCost = venue.VenueCost,
                                        VenueFilename = venue.VenueFilename,
                                        VenueFilePath = venue.VenueFilePath,
                                        BookingDate = booking.BookingDate,
                                        BookingID = booking.BookingID,
                                        Createdate = venue.Createdate
                }).Distinct().ToList();

                return listofcities;*/
            }
    }
}
