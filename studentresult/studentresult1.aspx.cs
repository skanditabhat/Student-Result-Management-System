using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class studentresult1 : System.Web.UI.Page
{
    string roll,cl;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["roll"].ToString() != null)
        {
            roll = Session["roll"].ToString();
            cl = Session["Class"].ToString();
            getdata();
        }
        else
        {
            Response.Redirect("studentresult1.aspx");
        }


    }
    public void getdata()
    {
        SqlConnection con = new SqlConnection(" Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        SqlCommand cmd = new SqlCommand("select * from " + cl + " where RollNo=@RollNo", con);
        con.Open();
        cmd.Parameters.AddWithValue("@RollNo", roll);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lblroll.Text = dr["RollNo"].ToString();
            lblname.Text = dr["StudentName"].ToString();
            lblclass.Text = dr["ClassName"].ToString();
            lbleng.Text = dr["English"].ToString();
            lblkan.Text = dr["Kannada"].ToString();
            lblevs.Text = dr["EVS"].ToString();
            lblmath.Text = dr["Math"].ToString();
            lblgk.Text = dr["GK"].ToString();
            lbltotal.Text = dr["Total"].ToString();
            lblperc.Text = dr["Percentage"].ToString();
        }
        dr.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentlogin.aspx");
    }
}