using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class createsubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into subject(SubjectName,SubjectCode)values(@Name,@code)"))
            {
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@code", TextBox2.Text);
                

                cmd.Connection = con;

                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Record saved succesfully')</script>");
                }

                con.Close();

            }
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            
        }

    }
}