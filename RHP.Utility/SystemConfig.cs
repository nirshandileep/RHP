using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;

namespace RHP.Utility
{
    public class SystemConfig : Base
    {
        public string Key { get; set; }
        public string Value { get; set; }
        public string Description { get; set; }

        public static string GetValue(Enums.SystemConfig config)
        {
            SystemConfig entity = Generic.GetByFieldValue<SystemConfig>("Key", config.ToString());
            return entity == null ? string.Empty : entity.Key;
        }
    }
}
