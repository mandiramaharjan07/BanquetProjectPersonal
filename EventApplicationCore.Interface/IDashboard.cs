﻿using EventApplicationCore.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventApplicationCore.Interface
{
    public interface IDashboard
    {
        List<VenueModel> GetList(DateTime date, string location);
    }
}
