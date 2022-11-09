using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class changepasswords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(" Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        SqlDataAdapter sda = new SqlDataAdapter("select password from admin where password='" + txtpass.Text + "' ", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            if (txtnpass.Text == txtcpass.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update admin set password ='" + txtcpass.Text + "'where password='" + txtpass.Text + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "succesfully updated";
                Label1.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                Label1.Text = "new password and confirm password must be sane";
            }
        }
        else
        {
            Label1.Text = "please check your old password";


        }
    }
}