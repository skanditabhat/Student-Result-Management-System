using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class creatclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into class(ClassName,ClassNameNumeric,Section,CreationDate)values(@Name,@cnn,@section,@Cdate)"))
            {
                cmd.Parameters.AddWithValue("@Name", txtcls.Text);
                cmd.Parameters.AddWithValue("@cnn", txtnamenum.Text);
                cmd.Parameters.AddWithValue("@section", txtsection.Text);
                cmd.Parameters.AddWithValue("@Cdate", DateTime.Now);

                cmd.Connection = con;

                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Record saved succesfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Record not saved')</script>");
                }

                con.Close();
                 

            }
            txtcls.Text = string.Empty;
            txtnamenum.Text = string.Empty;
            txtsection.Text = string.Empty;
        }

    }
}