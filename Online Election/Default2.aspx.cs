using System;
using System.Web.UI;
using System.Data.SqlClient;
using Check;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
            
    public void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.check("W4", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Registered Successful. Kindly login to continue..');", true);
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string kl = "select Password from Staff_details where Username='" + id.Text + "'";
        da = new SqlDataAdapter(kl, con);
        da.Fill(ds);
            
        if (ds.Tables[0].Rows.Count>0)
        {
            if (pass.Text == "admin")
            {
                //ClientScript.RegisterClientScriptBlock(GetType(), "alert", Page.ToString());
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Sucessful');", true);
                Session["fname"] = "admin";
                Response.Redirect("Add.aspx");
            }
            else
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Data Insert Successfully...');", true);
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong Password');", true);
            }
        }
        else
        {
            string s = "Select Pass from Details where UserId='" + id.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                string pas = dr[0].ToString();
                if (pass.Text == pas)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Sucessful');", true);
                    Session["fname"] = "user";
                    Session["id"] = id.Text;
                    Response.Redirect("User.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Your UserId or password is Incorrect');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Your PserId or Password is Incorrect');", true);
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgetpass.aspx");
    }
}