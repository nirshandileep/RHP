using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;

namespace RHP.LandlordManagement
{
    public class House: Base
    {
        public Guid HouseId { get; set; }
        public Guid LandlordId { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public int? YearHomeBuild { get; set; }
        public int? BedRooms { get; set; }
        public int? BathRooms { get; set; }
        public decimal? LotSquareFootage { get; set; }
        public decimal? TotalSquareFootage { get; set; }
        public string UtilitiesIncludedInRent { get; set; }
        public string PropertyImagePath { get; set; }
        public decimal? RatingValue { get; set; }
        public decimal? Price { get; set; }
    }
}
