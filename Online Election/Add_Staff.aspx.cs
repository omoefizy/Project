using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data; 

public partial class Add_Staff : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["add"] == "add")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Data Submitted !!!')", true);
            Session["add"] = "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        


        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string kl = "select top 1 Staff_ID from Staff_Details order by Staff_ID desc";
        da = new SqlDataAdapter(kl, con);
        da.Fill(ds);
        int c=0;
        if (ds.Tables[0].Rows.Count > 0)
        {
            c = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            c = c + 1;

            HiddenField1.Value = Convert.ToString(c);
        }
        else
        {
            HiddenField1.Value = "10001";
        }
        SqlCommand cmd;
        con.Open();
        string jk = "insert into Staff_ID values('" + HiddenField1.Value + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        cmd = new SqlCommand(jk, con);
        //cmd.ExecuteNonQuery();
        con.Close();
        Session["add"] = "add";
        Response.Redirect("Add_Staff.aspx");


    }
    
}