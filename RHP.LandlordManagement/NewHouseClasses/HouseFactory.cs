using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.LandlordManagement
{
    public static class HouseFactory
    {
        public static BaseHouse Create(RHP.Common.Enums.HouseType houseType)
        {
            BaseHouse baseHouse;
            switch (houseType)
            {
                case RHP.Common.Enums.HouseType.Dorms:
                    baseHouse = new Dorm();
                    break;
                case RHP.Common.Enums.HouseType.Appartment:
                    baseHouse = new Appartment();
                    break;
                case RHP.Common.Enums.HouseType.Condo:
                    baseHouse = new Condo();
                    break;
                case RHP.Common.Enums.HouseType.FamilyHousing:
                    baseHouse = new FamilyHousing();
                    break;
                case RHP.Common.Enums.HouseType.House:
                    baseHouse = new OnCampusHouse();
                    break;
                case RHP.Common.Enums.HouseType.OffCampusAppartment:
                    baseHouse = new OffCampusAppartment();
                    break;
                case RHP.Common.Enums.HouseType.OffCampusCondo:
                    baseHouse = new OffCampusCondo();
                    break;
                case RHP.Common.Enums.HouseType.TownHome:
                    baseHouse = new TownHome();
                    break;
                case RHP.Common.Enums.HouseType.OffCampusHouse:
                    baseHouse = new OffCampusHouse();
                    break;
                default:
                    baseHouse = new Dorm();
                    break;
            }
            return baseHouse;
        }
    }
}
