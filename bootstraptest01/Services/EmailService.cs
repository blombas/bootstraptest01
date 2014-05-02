using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Net.Mail;

namespace bootstraptest01.Services
{
    public class EmailService
    {
        public static bool SendEmail(string senderName, string from, string message, EmailTemplate template)
        {
            bool emailIsSend;

            try
            {
                var mailMessage = new MailMessage("sealioninnewyork@gmail.com", "sealioninnewyork@gmail.com");
                mailMessage.Subject = "Walkdating: Mail fra '" + senderName + "' (" + from + ")";
                mailMessage.Body = message;

                using (var mailer = new SmtpClient("smtp.gmail.com", 587))
                {
                    mailer.EnableSsl = true;
                    mailer.UseDefaultCredentials = false;
                    mailer.Credentials = new NetworkCredential("sealioninnewyork@gmail.com", "2Coffee2Go");
                    mailer.DeliveryMethod = SmtpDeliveryMethod.Network;
                    mailer.Send(mailMessage);
                    emailIsSend = true;
                }
            }
            catch (Exception)
            {
                emailIsSend = false;
            }
            return emailIsSend;
        }
    }

    public enum EmailTemplate
    {
        Contact,
        Signup,
        MoneyRecieved,
        FirstReminder,
        SecondReminder,
        EventIsCancelled,
        ResultOfDate
    }
}