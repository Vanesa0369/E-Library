using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
namespace E_Library
{
    public partial class ContactUs : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox2.Text != "" && TextBox1.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                SmtpClient MailClient = new SmtpClient("localhost");
                MailMessage Email = new MailMessage();
                try
                {
                    Email.From = new MailAddress(TextBox1.Text);
                    Email.To.Add(TextBox1.Text);
                    Email.Subject = TextBox3.Text;
                    Email.Body = TextBox4.Text;
                    Email.IsBodyHtml = true;
                    MailClient.Send(Email);
                    Label5.Text = "Email sent";

                }
                catch (Exception)
                { Label5.Text = "Error in sending email!"; }
                TextBox2.Text = "";
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }

        }
    }
}

