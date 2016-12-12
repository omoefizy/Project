using System;
using System.Data.SqlClient;
using System.Data;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        string s = "Select EId from Election where EndDate > '"+DateTime.Now.ToShortDateString()+"' And User" + Session["id"].ToString() + " IS NULL";
        string com = "SELECT EId FROM Election where EndDate > '" + DateTime.Now.ToString("dd-MM-yyyy") + "' Except SELECT EId FROM Answer where UserId='" + Session["id"].ToString() + "' GROUP BY EId";
        con.Open();
        
        SqlDataAdapter da = new SqlDataAdapter(com, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int rows = ds.Tables[0].Rows.Count;
        if (rows == 0)
        {
            Label3.Text = "No Election Pending ";
            DropDownList1.Visible = false;
            Button3.Visible = false;
        }
        else
        {
            for (int i = 0; i < rows; i++)
            {
                DropDownList1.Items.Add(Convert.ToString(ds.Tables[0].Rows[i][0]));
            }
        }
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["EId"]=DropDownList1.Text;
        Response.Redirect("Vote.aspx");
    }
}