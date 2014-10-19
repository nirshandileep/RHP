using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;

namespace RHP.Multimedia
{
    public class Photo : Base
    {
        public Guid PhotoId { get; set; }
        public string FileName { get; set; }
        public string Caption { get; set; }
        public string Description { get; set; }
        public string FilePath { get; set; }
        public int ContextTypeId { get; set; }
        public Enums.ContextType ContextType { get; set; }
        public int ContextSubTypeId { get; set; }
        public int ContextId { get; set; }
        public int PhotoCategoryId { get; set; }
        public Enums.PhotoCategory PhotoCategory { get; set; }

        public static Photo Select(Guid photoId)
        {
            Photo photo = Utility.Generic.GetByGUID<Photo>(photoId);
            return photo;
        }

        public static List<Photo> Select(Guid contextId, int contextTypeId, int contextSubType = 0)
        {
            List<Photo> allPhotos = new List<Photo>();
            return allPhotos;
        }

        public static List<Photo> SelectAllByContextId(Guid contextId)
        {
            List<Photo> allPhotos = new List<Photo>();
            return allPhotos;
        }
    }
}
