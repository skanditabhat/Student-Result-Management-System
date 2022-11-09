using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addstudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            class1();
        }
    }
    public void class1()
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select distinct * from scombination ", con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        DropDownList2.Items.Clear();
        DropDownList2.DataTextField = "Class";
        DropDownList2.DataSource = dt;
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("Select Class "));
        con.Close();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into student(Rollno,StdName,Gender,DOB,class)values(@rollno,@name,@gender,@DOB,@class)"))
            {
                cmd.Parameters.AddWithValue("@rollno", txtroll.Text);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@DOB", txtdate.Text);
                cmd.Parameters.AddWithValue("@class",  DropDownList2.SelectedItem.ToString());

                cmd.Connection = con;

                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Record saved succesfully')</script>");
                }

                con.Close();

            }
            txtroll.Text = string.Empty;
            txtname.Text = string.Empty;
           txtdate.Text = string.Empty;
        }
    }
}