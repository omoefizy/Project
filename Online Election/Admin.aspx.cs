using System;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True";
            string fdate = DateTime.Now.ToString("yyyy/MM/dd");
            string yr = DateTime.Now.Year.ToString();
            string mon = DateTime.Now.Month.ToString();
            string das = DateTime.Now.Day.ToString();
            fdate = yr + "/" + mon + "/" + das;
            string s = "SELECT EId FROM Election where EndDate <= '" +fdate+ "' AND Result is NULL";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rows = ds.Tables[0].Rows.Count;
            if (rows == 0)
            {
                Label2.Text = "Elections Have Not Ended";
                DropDownList1.Visible = false;
                Button1.Visible = false;
            }
            else
            {
                for (int i = 0; i < rows; i++)
                {
                    DropDownList1.Items.Add(Convert.ToString(ds.Tables[0].Rows[i][0]));
                }
            }
        }
    }
    public string dfun(string str)
    {
        DateTime dt = Convert.ToDateTime(str);
        string s = dt.ToString("dd-MM-yyyy");
        return s;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        SqlConnection con1 = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        
        string s = "SELECT EC1,EC2,EC3,EC4 FROM Vote WHERE EId='" + DropDownList1.Text + "' ";
        SqlCommand cmd = new SqlCommand(s, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int a = Convert.ToInt32(dr[0]);
        int b = Convert.ToInt32(dr[1]);
        int c = Convert.ToInt32(dr[2]);
        int d = Convert.ToInt32(dr[3]);
        con.Close();

        EV1.Text = "" + a;
        EV2.Text = "" + b;
        EV3.Text = "" + c;
        EV4.Text = "" + d;

        string result = "";

        int[] numbers = new int[] { a, b, c, d };
        int max = numbers.Max();
        int no = 0;
        string won1 = "", won2 = "", won3 = "", won4 = "";
        if (a == max)
        {
            no++;
            won1 = "1";
        }
        if (b == max)
        {
            no++;
            won2 = "2";
        }
        if (c == max)
        {
            no++;
            won3 = "3";
        }
        if (d == max)
        {
            no++;
            won4 = "4";
        }


        if (won1 != "")
        {
            result += "EC1,";
        }
        if (won2 != "")
        {
            result += "EC2,";
        }
        if (won3 != "")
        {
            result += "EC3,";
        }
        if (won4 != "")
        {
            result += "EC4,";
        }
        string names = "";
        s = "Select " + result + "EId from Election where EId='" + DropDownList1.Text + "' ";
        cmd = new SqlCommand(s, con);
        con.Open();
        SqlDataReader dr1 = cmd.ExecuteReader();
        dr1.Read();
        for (int i = 0; i < no; i++)
        {
            names += dr1[i].ToString() + ",";
        }
        con.Close();

        names = names.Remove(names.Length-1);

        s = "select EC1,EC2,EC3,EC4 from Election where EId='" + DropDownList1.Text + "'";
        string c1 = "", c2 = "", c3 = "", c4 = "";
        cmd = new SqlCommand(s, con);
        con.Open();
        dr1 = cmd.ExecuteReader();
        dr1.Read();

        Label4.Text ="EC1 - "+ dr1[0].ToString();
        Label5.Text ="EC2 - "+ dr1[1].ToString();
        c1 = dr1[0].ToString();
        c2 = dr1[1].ToString();
        
        SqlDataAdapter da = new SqlDataAdapter("Select * from Candi where Name='"+c1+"'",con1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label9.Text = c1;
        Label11.Text = ds.Tables[0].Rows[0][2].ToString();
        Image1.ImageUrl = ds.Tables[0].Rows[0][3].ToString();

        da = new SqlDataAdapter("Select * from Candi where Name='" + c2 + "'", con1);
        ds = new DataSet();
        da.Fill(ds);
        Label14.Text = c2;
        Label16.Text = ds.Tables[0].Rows[0][2].ToString();
        Image2.ImageUrl = ds.Tables[0].Rows[0][3].ToString();


        if (dr1[2].ToString() != "" && dr1[2].ToString()!="NULL")
        {
            c3 = dr1[2].ToString();
            Label6.Text ="EC3 - "+ dr1[2].ToString();

            da = new SqlDataAdapter("Select * from Candi where Name='" + c3 + "'", con1);
            ds = new DataSet();
            da.Fill(ds);
            Label20.Text = c3;
            Label22.Text = ds.Tables[0].Rows[0][2].ToString();
            Image3.ImageUrl = ds.Tables[0].Rows[0][3].ToString();
            Label19.Visible = true;
            Label20.Visible = true;
            Label22.Visible = true;
            Label21.Visible = true;
            Label23.Visible = true;
            Image3.Visible = true;
            EV3.Visible = true;
        }
        else
        {
            Label6.Text ="EC3 - "+ "No Candidate";
            Label19.Visible = false;
            Label20.Visible = false;
            Label22.Visible = false;
            Label21.Visible = false;
            Label23.Visible = false;
            Image3.Visible = false;
            EV3.Visible = false;
        }

        if (dr1[3].ToString() != "" && dr1[3].ToString() != "NULL")
        {
            Label7.Text = "EC4 - " + dr1[3].ToString();
            c4 = dr1[3].ToString();

            da = new SqlDataAdapter("Select * from Candi where Name='" + c4 + "'", con1);
            ds = new DataSet();
            da.Fill(ds);
            Label26.Text = c4;
            Label28.Text = ds.Tables[0].Rows[0][2].ToString();
            Image4.ImageUrl = ds.Tables[0].Rows[0][3].ToString();
            Label25.Visible = true;
            Label26.Visible = true;
            Label27.Visible = true;
            Label28.Visible = true;
            Label29.Visible = true;
            Image3.Visible = true;
            EV4.Visible = true;
        }
        else
        {
            Label7.Text = "EC4 - " + "No Candidate";
            Label26.Text = "N/A";
            Label28.Text = "N/A";
            Image4.Visible = false;
            Label25.Visible = false;
            Label26.Visible = false;
            Label27.Visible = false;
            Label28.Visible = false;
            Label29.Visible = false;
            EV4.Visible = false;
        }
        con.Close();
        Panel1.Visible = true;
        s = "select Result from Election where EId='" + DropDownList1.Text + "'";
        cmd = new SqlCommand(s, con);
        con.Open();
        dr1 = cmd.ExecuteReader();
        dr1.Read();

        string test = dr1[0].ToString();
        con.Close();

        string text = "Election is won by " + names + " in Election '" + DropDownList1.Text + "'";
        Label3.Text = text;
        Label3.Visible = true;
        
        if (names != "")
        {
           
            s = "Update Election Set Result ='" + names + "' where EId='" + DropDownList1.Text + "'";
            cmd = new SqlCommand(s, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

           
        }
    }
    public void email_send(string email,string text)
    {
        
        MailMessage mail = new MailMessage();
         SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
         mail.From = new MailAddress("omobosoftwareinterface@gmail.com");
         mail.To.Add(email);
         mail.Subject = "Election Result";
         mail.Body = text;

         SmtpServer.Port = 587;
         SmtpServer.Credentials = new System.Net.NetworkCredential("omobosoftwareinterface@gmail.com", "LOVEebi@1");
         SmtpServer.EnableSsl = true;

        SmtpServer.Send(mail);
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}