using System;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class Forgetpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = "";
        string password = "";
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("Select UserId, Pass from Details where Email= @Email", con);
        cmd.Parameters.AddWithValue("Email", txtEmail.Text);
        con.Open();
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                username = sdr["UserId"].ToString();
                password = sdr["Pass"].ToString();

            }

        }
        con.Close();

        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("omobosoftwareinterface@gmail.com");
            mail.To.Add(txtEmail.Text);
            mail.Subject = " Recover your Password";
            mail.Body = ("Your UserID is:" + username + "<br/><br/>" + "Your Password is:" + password);
            mail.IsBodyHtml = true;

            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "omobosoftwareinterface@gmail.com"; //Your Email ID  
            ntwd.Password = "LOVEebi@1"; // Your Password  
            SmtpServer.UseDefaultCredentials = true;
            SmtpServer.Credentials = ntwd;
            SmtpServer.Port = 587;
            SmtpServer.EnableSsl = true;
            SmtpServer.UseDefaultCredentials = true;
            try
            {
                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught in Button1_Click(): {0}",
                            ex.ToString());
            }

            //SmtpServer.Send(mail);
            lbmsg.Text = "UserID and Password Sent Successfully";
            lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
}  
