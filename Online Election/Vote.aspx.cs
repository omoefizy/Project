using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Vote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        string s = "Select ETopic,ECNo,EC1,EC2,EC3,EC4 from Election where EId='"+Session["EId"].ToString()+"'";
        SqlCommand cmd = new SqlCommand(s,con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int can= Convert.ToInt32(dr[1]);
        Label3.Text = dr[0].ToString();
        if (can == 2)
        {
            RadioButton1.Text = dr[2].ToString();
            RadioButton2.Text = dr[3].ToString();
            Panel1.Visible = false;
            Panel2.Visible = false;
        }
        else if (can == 3)
        {
            RadioButton1.Text = dr[2].ToString();
            RadioButton2.Text = dr[3].ToString();
            RadioButton3.Text = dr[4].ToString();
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else if (can == 4)
        {
            RadioButton1.Text = dr[2].ToString();
            RadioButton2.Text = dr[3].ToString();
            RadioButton3.Text = dr[4].ToString();
            RadioButton4.Text = dr[6].ToString();
            Panel1.Visible = true;
            Panel2.Visible = true;
        }
        con.Close();
    }

    public string check()
    {
        
        if (RadioButton1.Checked == true)
        {
            return "1";
        }
        else if (RadioButton2.Checked == true)
        {
            return "2";
        }
        else if (RadioButton3.Checked == true)
        {
            return "3";
        }
        else if (RadioButton4.Checked == true)
        {
            return "4";
        }
        else
        {
            return "0";
        }
    }
    /* protected string SendEmail(string toAddress, string subject, string body)
     {
         string result = "Voted Successfully..!!";
         string senderID = "omobosoftwareinterface@gmail.com";// use sender’s email id here..
         const string senderPassword = "LOVEebi@1"; // sender password here…
         try
         {
             SmtpClient smtp = new SmtpClient
             {
                 Host = "smtp.gmail.com", // smtp server address here…
                 Port = 587,
                 EnableSsl = true,
                 DeliveryMethod = SmtpDeliveryMethod.Network,
                 Credentials = new System.Net.NetworkCredential("omobosoftwareinterface@gmail.com", "LOVEebi@1"),
                 Timeout = 30000,
             };
             MailMessage message = new MailMessage(senderID, toAddress, subject, body);
             smtp.Send(message);
         }
         catch (Exception ex)
         {
             result = "Error sending email.!!!";
         }
         return result;
     }*/

    public void email_send(string email, string text)
    {

        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress("omobosoftwareinterface@gmail.com");
        mail.To.Add(email);
        mail.Subject = "Voted Successfully.....";
        mail.Body = text;

        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential("omobosoftwareinterface@gmail.com", "LOVEebi@1");
        SmtpServer.EnableSsl = true;

        SmtpServer.Send(mail);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string set = check();
        if (set != "0")
        {
            string id = Convert.ToString(Session["id"]);
            string com1="",com = "select EC1,EC2,EC3,EC4 from Vote where EId='" + Session["EId"].ToString() + "'";
            SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(com, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int a = Convert.ToInt32(dr[0]);
            int b = Convert.ToInt32(dr[1]);
            int c = Convert.ToInt32(dr[2]);
            int d = Convert.ToInt32(dr[3]);
            con.Close();

            int ans = 0;
            if (set == "1")
            {
                ans = a + 1;
                com = "Update Vote set EC1='" + ans + "' where EId='" + Session["EId"].ToString() + "'";
                com1 = "Insert into Answer (UserID,EId,Ans) values ('" + id + "','" + Session["EId"].ToString() + "','1')";
            }
            else if (set == "2")
            {
                ans = b + 1;
                com = "Update Vote set EC2='" + ans + "' where EId='" + Session["EId"].ToString() + "'";
                com1 = "Insert into Answer (UserID,EId,Ans) values ('" + id + "','" + Session["EId"].ToString() + "','2')";
            }
            else if (set == "3")
            {
                ans = c + 1;
                com = "Update Vote set EC3='" + ans + "' where EId='" + Session["EId"].ToString() + "'";
                com1 = "Insert into Answer (UserID,EId,Ans) values ('" + id + "','" + Session["EId"].ToString() + "','3')";
            }
            else if (set == "4")
            {
                ans = d + 1;
                com = "Update Vote set EC4='" + ans + "' where EId='" + Session["EId"].ToString() + "'";
                com1 = "Insert into Answer (UserID,EId,Ans) values ('" + id + "','" + Session["EId"].ToString() + "','4')";
            }

            con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
            cmd = new SqlCommand(com, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
            cmd = new SqlCommand(com1, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("User.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Select Any One Candidate');", true);
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            RadioButton2.Checked = false;
        }

        if (RadioButton3.Checked == true)
        {
            RadioButton3.Checked = false;
        }

        if (RadioButton4.Checked == true)
        {
            RadioButton4.Checked = false;
        }
        RadioButton1.Checked = true;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            RadioButton1.Checked = false;
        }

        if (RadioButton3.Checked == true)
        {
            RadioButton3.Checked = false;
        }

        if (RadioButton4.Checked == true)
        {
            RadioButton4.Checked = false;
        }
        RadioButton2.Checked = true;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            RadioButton2.Checked = false;
        }

        if (RadioButton1.Checked == true)
        {
            RadioButton1.Checked = false;
        }

        if (RadioButton4.Checked == true)
        {
            RadioButton4.Checked = false;
        }
        RadioButton3.Checked = true;
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            RadioButton2.Checked = false;
        }

        if (RadioButton3.Checked == true)
        {
            RadioButton3.Checked = false;
        }

        if (RadioButton1.Checked == true)
        {
            RadioButton1.Checked = false;
        }
        RadioButton4.Checked = true;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Name"] = RadioButton1.Text;
        Response.Redirect("ViewC.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["Name"] = RadioButton2.Text;
        Response.Redirect("ViewC.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["Name"] = RadioButton3.Text;
        Response.Redirect("ViewC.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["Name"] = RadioButton4.Text;
        Response.Redirect("ViewC.aspx");
    }
}