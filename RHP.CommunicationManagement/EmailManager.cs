using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using RHP.Utility;
using RHP.Common;

namespace RHP.CommunicationManagement
{
    public class EmailManager
    {

        private string smtpServerName;
        private string smtpEmailFrom;
        private int? portNumber;
        private string smtpUsername;
        private string smtpPassword;

        public string SmtpServerName
        {
            get
            {
                if (string.IsNullOrEmpty(smtpServerName))
                {
                    smtpServerName = SystemConfig.GetValue(Enums.SystemConfig.SMTP_HOST).ToLower();
                }
                return smtpServerName;
            }
            set { smtpServerName = value; }
        }

        public int? PortNumber
        {
            get
            {
                if (portNumber == null)
                {
                    portNumber = int.Parse(SystemConfig.GetValue(Enums.SystemConfig.SMTP_PORT));
                }
                return portNumber;
            }
            set { portNumber = value; }
        }

        /// <summary>
        /// Constructs the class - needs SMtpServer name and address that emails will be sent from.
        /// </summary>
        /// <param name="SmtpServerName"></param>
        /// <param name="SmtpEmailFrom"></param>
        public EmailManager(string smtpServerName, string smtpEmailFrom)
        {
            this.smtpServerName = smtpServerName;
            this.smtpEmailFrom = smtpEmailFrom;
        }

        /// <summary>
        /// Constructs the class - needs SMtpServer name and address that emails will be sent from and SMTP port number
        /// </summary>
        /// <param name="SmtpServerName"></param>
        /// <param name="SmtpEmailFrom"></param>
        /// <param name="portNumber"></param>
        public EmailManager(string smtpServerName, string smtpEmailFrom, int portNumber)
        {
            this.smtpServerName = smtpServerName;
            this.smtpEmailFrom = smtpEmailFrom;
            this.portNumber = portNumber;
        }

        /// <summary>
        /// Constructs the class - needs SMtpServer name and address that emails will be sent from,
        /// plus username + password to connect to SMTP server
        /// </summary>
        /// <param name="smtpServerName"></param>
        /// <param name="smtpEmailFrom"></param>
        /// <param name="smtpUsername"></param>
        /// <param name="smtpPassword"></param>
        public EmailManager(string smtpServerName, string smtpEmailFrom, string smtpUsername, string smtpPassword)
        {
            this.smtpServerName = smtpServerName;
            this.smtpEmailFrom = smtpEmailFrom;
            this.smtpUsername = smtpUsername;
            this.smtpPassword = smtpPassword;
        }

        /// <summary>
        /// Constructs the class - needs SMtpServer name and address that emails will be sent from,
        /// username + password to connect to SMTP server and port number.
        /// </summary>
        /// <param name="SmtpServerName"></param>
        /// <param name="SmtpEmailFrom"></param>
        /// <param name="PortNumber"></param>
        /// <param name="SmtpUsername"></param>
        /// <param name="SmtpPassword"></param>
        public EmailManager(string smtpServerName, string smtpEmailFrom, int portNumber, string smtpUsername,
                            string smtpPassword)
        {
            this.smtpServerName = smtpServerName;
            this.smtpEmailFrom = smtpEmailFrom;
            this.portNumber = portNumber;
            this.smtpUsername = smtpUsername;
            this.smtpPassword = smtpPassword;
        }

        public void SendEmail(string toList, string subjectLine, string contentInPlainText, string emailFrom,
                              string ccList, string contentInHTML)
        {
            MailMessage mail = null;
            try
            {
                // Verify input parameters
                if (string.IsNullOrEmpty(emailFrom))
                {
                    throw new Exception("Can't send email - 'From' address is null or empty");
                }

                if (string.IsNullOrEmpty(toList))
                {
                    throw new Exception("Can't send email - 'To' address is null or empty");
                }

                //if (fileAttachments != null)
                //{
                //    foreach (string file in fileAttachments)
                //    {
                //        if (!System.IO.File.Exists(file))
                //        {
                //            throw new Exception("Can't send email - can't find file attachment: " + file);
                //        }
                //    }
                //}

                // Setup the mail message:            
                mail = new MailMessage();

                mail.Subject = subjectLine;

                //setting up the from address
                MailAddress fromMailAddress = new MailAddress(emailFrom);
                mail.From = fromMailAddress;

                //SPECIAL NOTE : NO need to set the body as adding alternate views of body will take care of it

                //alternate view for plain text
                AlternateView mailBodyPlainView = AlternateView.CreateAlternateViewFromString(
                    contentInPlainText, new System.Net.Mime.ContentType("text/plain"));
                mail.AlternateViews.Add(mailBodyPlainView);

                //alternate view for html
                // Request ID : 21714 Added UTF8 Encoding as it seems to fix problems with unusual characters
                if (string.IsNullOrEmpty(contentInHTML) == false)
                {
                    AlternateView mailBodyHTMLView = AlternateView.CreateAlternateViewFromString(
                        contentInHTML, Encoding.UTF8, "text/html");

                    // attach the images to the email
                    //if (imageList != null)
                    //{
                    //    foreach (RtfToHtml.SautinImage image in imageList)
                    //    {
                    //        if (image.Img != null)
                    //        {
                    //            LinkedResource linkedResource = null;

                    //            MemoryStream memoryStream = new System.IO.MemoryStream();

                    //            image.Img.Save(memoryStream, System.Drawing.Imaging.ImageFormat.Png);

                    //            if (memoryStream != null && memoryStream.Position > 0)
                    //            {
                    //                memoryStream.Position = 0;
                    //            }

                    //            linkedResource = new LinkedResource(memoryStream);
                    //            linkedResource.ContentId = image.Cid.Replace("cid:", string.Empty);

                    //            mailBodyHTMLView.LinkedResources.Add(linkedResource);
                    //        }
                    //    }
                    //}

                    mail.AlternateViews.Add(mailBodyHTMLView);
                }

                // Add To email addresses:
                string[] ToEmailAddreses = Utility.Utility.SplitStrings(toList);
                foreach (string toAddress in ToEmailAddreses)
                {
                    if (toAddress != null && toAddress.Trim() != string.Empty)
                    {
                        MailAddress to = new MailAddress(toAddress.Trim());
                        mail.To.Add(to);
                    }
                }

                // Add CC email addresses if specified:
                string[] CCEmailAddreses = Utility.Utility.SplitStrings(ccList);

                if (CCEmailAddreses != null)
                {
                    foreach (string ccAddress in CCEmailAddreses)
                    {
                        if (ccAddress != null && ccAddress.Trim() != string.Empty)
                        {
                            MailAddress copy = new MailAddress(ccAddress.Trim());
                            mail.CC.Add(copy);
                        }
                    }
                }

                // Add the attachments, if specified
                //if (fileAttachments != null)
                //{
                //    foreach (string attachment in fileAttachments)
                //    {
                //        Attachment data = new Attachment(attachment, System.Net.Mime.MediaTypeNames.Application.Octet);

                //        // Add time stamp information for the file.
                //        ContentDisposition disposition = data.ContentDisposition;
                //        disposition.CreationDate = System.IO.File.GetCreationTime(attachment);
                //        disposition.ModificationDate = System.IO.File.GetLastWriteTime(attachment);
                //        disposition.ReadDate = System.IO.File.GetLastAccessTime(attachment);

                //        // Add the file attachment to this e-mail message.
                //        mail.Attachments.Add(data);
                //    }
                //}

                // Now setup the mail client:
                SmtpClient smtpClient = new SmtpClient(this.smtpServerName);

                //This block of code is for development environments: if no SMTP server name
                //is provided then write the emails to the file system.
                if (string.IsNullOrEmpty(this.SmtpServerName))
                {
                    smtpClient.PickupDirectoryLocation = System.IO.Path.GetTempPath();
                    smtpClient.DeliveryMethod = SmtpDeliveryMethod.SpecifiedPickupDirectory;
                }

                if (this.PortNumber.HasValue)
                {
                    smtpClient.Port = portNumber.Value;
                }

                if ((!string.IsNullOrEmpty(this.smtpUsername)) && (!string.IsNullOrEmpty(this.smtpPassword)))
                {
                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Credentials = new System.Net.NetworkCredential(this.smtpUsername, this.smtpPassword);
                }

                smtpClient.Send(mail);
            }
            catch (FormatException ex)
            {
                // Format exception is throw when email addresses are invalid
                throw ex;
            }
            catch (SmtpException ex)
            {
                //this Exception occurs when the connection to the SMTP server failed or authentication failed or The operation timed out. 
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (mail != null && mail.Attachments != null)
                {
                    foreach (Attachment att in mail.Attachments)
                    {
                        att.Dispose();
                    }
                }
            }
        }



        /// <summary>
        /// Conversion from plaintext format to HTML
        /// Converts NewLine into BR tag and replaces the common HTML entities
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        private static string ConvertTextToHtml(string text)
        {
            // Reserve additional space as the replacement tags take up more space than
            // the original characters
            StringBuilder builder = new StringBuilder(text, text.Length * 2);

            // Change all the NewLine's into HTML line breaks
            // Doing any further conversion just confuses the SmtpClient which tries to double encode everything
            builder.Replace(System.Environment.NewLine, "<br/>");

            return builder.ToString();
        }
    }
}
