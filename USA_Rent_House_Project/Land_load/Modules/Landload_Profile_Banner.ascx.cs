﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Photos;
using RHP.Common;
using RHP.Utility;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_Banner : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
            string AccessCode2 = Utility.GetQueryStringValueByKey(Request, "AccessCode2");
            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    loadimage(Guid.Parse(AccessCode2));
                }
                catch (Exception ex)
                { }
            }
        }

        public void loadimage(Guid AccessCode)
        {
            Photo photo = new Photo();
            try
            {

                List<String> images = photo.LoadImageList(AccessCode, Enums.PhotoCategory.House_Life_Picture);

                if (images != null)
                {

                    int imagescount = images.Count;

                    if (imagescount <= 1)
                    {
                        RepeaterImages.DataSource = images;
                        RepeaterImages.DataBind();
                    }
                    else
                    {
                        int check = 0;
                        int length = 5;

                        if (imagescount < 5)
                        { length = imagescount; }

                        int[] NumberList = new int[length];
                        Random rand = new Random();
                        List<String> imageList = new List<string>(length);

                        for (int i = 0; i < length; )
                        {
                            check = rand.Next(1, imagescount);

                            if (!NumberList.Contains(check))
                            {
                                imageList.Add(images[check].ToString());
                                NumberList[i] = check;
                                i++;
                            }
                        }
                        RepeaterImages.DataSource = imageList;
                        RepeaterImages.DataBind();

                    }
                }

                //if (images != null)
                //{
                //    RepeaterImages.DataSource = images;
                //    RepeaterImages.DataBind();

                //}

            }
            catch (Exception ec)
            { }

        }
    }
}