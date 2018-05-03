using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace bean
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("mrbean.beanbag@gmail.com");
                    mailMessage.To.Add("mrbean.beanbag@gmail.com");
                    mailMessage.Subject = "Customer's Message";

                    mailMessage.Body = "<b>Sender Name : </b>" + txtname.Text + "<br/>" + "<b>Sneder Email : </b>" + txtemail.Text + "<br/>" + "<b>Message : </b>" + txtmessage.Text;
                    mailMessage.IsBodyHtml = true;

                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("mrbean.beanbag@gmail.com", "WakandaForeva275");
                    smtpClient.Send(mailMessage);

                    labelmessage.ForeColor = System.Drawing.Color.Blue;
                    labelmessage.Text = "Thank you for contacting us!";

                    txtname.Enabled = false;
                    txtemail.Enabled = false;
                    txtmessage.Enabled = false;
                    labelmessage.Enabled = false;
                }
            }
            catch (Exception)
            {
                //Log - Event Viewer or table
                labelmessage.ForeColor = System.Drawing.Color.Blue;
                labelmessage.ForeColor = System.Drawing.Color.Red;
                labelmessage.Text = "Error occured, try later";
            }

        }
    }
}