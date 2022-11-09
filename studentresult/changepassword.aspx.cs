using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(" Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        SqlDataAdapter sda = new SqlDataAdapter("select password from admin where password='" + txt_cpassword.Text + "' ", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            if (txt_npassword.Text == txt_ccpassword.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update admin set password ='" + txt_ccpassword.Text + "'where password='" + txt_cpassword.Text +"' ",con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label4.Text = "succesfully updated";
                Label4.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                Label4.Text = "new password and confirm password must be sane";
            }
        }
        else
        {
            Label4.Text = "please check your old password";


        }
    }
    }        
