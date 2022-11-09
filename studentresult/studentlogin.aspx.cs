using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class studentlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tbl;
        if (DropDownList1.SelectedValue == "1")
        {
            tbl = "result1";
        }
        else if (DropDownList1.SelectedValue == "2")
        {
            tbl = "result1";
        }
        else if (DropDownList1.SelectedValue == "3")
        {
            tbl = "result1";
        }
        else if (DropDownList1.SelectedValue == "4")
        {
            tbl = "result1";
        }
        else
        {
            Label1.Text = "please select class";
            tbl = "";
        }
        SqlConnection con = new SqlConnection(" Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        SqlCommand cmd = new SqlCommand("select * from "+tbl+" Where RollNo=@RollNo", con);
        con.Open();
        cmd.Parameters.AddWithValue("@RollNo", txtroll.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Session["Class"] = tbl;
            Session["roll"] = txtroll.Text;
             if (DropDownList1.SelectedValue == "1")
        {
           Response.Redirect("studentresult1.aspx");
        }
        else if (DropDownList1.SelectedValue == "2")
        {
           Response.Redirect("studentresult1.aspx");
        }
        else if (DropDownList1.SelectedValue == "3")
        {
           // Response.Redirect("studentresult1.aspx");
        }
             else if (DropDownList1.SelectedValue == "4")
             {
                // Response.Redirect("studentresult1.aspx");
             }
             else if (DropDownList1.SelectedValue == "0")
             {
                 Label1.Text = "please select class";
                 
             }
             dr.Close();
            
        }
       
        con.Close();


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (txtroll.Text != "")
        {
            Button1.Enabled = true;
        }
        else
        {
            Label1.Text = "please select class";
        }
    }
}