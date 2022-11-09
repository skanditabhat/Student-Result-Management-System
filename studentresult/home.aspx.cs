using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Defaulttt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        

            SqlConnection con = new SqlConnection(" Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
            SqlCommand cmd = new SqlCommand("select * from admin where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtUserId.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            if (dt.Rows.Count > 0)
            {
                Session["username"] = txtUserId.Text;
                Response.Redirect("Dashboardt.aspx");
            }
            else
            {
                Label1.Text = "username & password not correct try again";
            }
        }
    
}