using EventApplicationCore.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventApplicationCore.Interface
{
    public interface IAdminDashboard
    {
        VenueInformation GetVenueInformation();
        List<VenuePiechart> GetVenueForPieChart();
        List<FlowerPiechart> GetFlowerForPieChart();
        List<EquipmentPiechart> GetEquipmentForPieChart();
        List<LightPiechart> GetLightForPieChart();
        List<TotalRev> getTotal();

    }
}
