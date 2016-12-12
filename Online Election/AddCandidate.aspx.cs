using System;
using System.Web.UI;
using System.Data.SqlClient;

public partial class AddCandidate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string image = "", path = "";
    public string check()
    {
        if (TextBox1.Text=="")
        {
            return "Name";
        }
        else if (TextBox2.Text == "")
        {
            return "Address";
        }
        else if (TextBox3.Text == "")
        {
            return "Mobile No";
        }
        else if (TextBox4.Text == "")
        {
            return "Description";
        }
        return "OK";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string c = check();
        if (c == "OK")
        {
            SqlCommand cmd = new SqlCommand("insert into Candi  Values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Image1.ImageUrl + "','" + TextBox5.Text + "','"+TextBox8.Text+"','"+TextBox9.Text+"','"+TextBox10.Text+"','"+TextBox11.Text+"','"+TextBox4.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AddCandidate.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter "+c+"');", true);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            image = FileUpload1.FileName;
            path = Server.MapPath("~\\images\\");
            FileUpload1.SaveAs(path + image);
            Image1.ImageUrl = "images\\" + image;
        }
        catch (Exception ep)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Select your photo');", true);
        }
    }
}