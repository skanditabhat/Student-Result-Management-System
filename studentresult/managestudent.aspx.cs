using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class managestudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.student1();

            Panel1.Visible = false;
        }
    }
    public void student1()
    {


        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        SqlCommand cmd = new SqlCommand("select * from student", con);
        con.Open();
        DataSet dt = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();



    }


    protected void Search_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        con.Close();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from student where Rollno like '" + TextBox1.Text + "%'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        GridViewRow row = GridView1.SelectedRow;
        Label2.Text = row.Cells[1].Text;
        TextBox4.Text = row.Cells[2].Text;
        TextBox5.Text = row.Cells[3].Text;
        TextBox6.Text = row.Cells[4].Text;
        TextBox7.Text = row.Cells[5].Text;
        TextBox8.Text = row.Cells[6].Text;

    }
    protected void Update_Click(object sender, EventArgs e)
    {
        con.Close();
        using (SqlConnection cn = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Update  student set Rollno=@rollno,StdName=@name,Gender=@gender,DOB=@DOB,class=@class where ID=@id"))
            {
              
                cmd.Parameters.AddWithValue("@rollno", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@name", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@class", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@id",  Label2.Text.Trim());

                cmd.Connection = cn;
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {

                    Response.Write("<script>alert('Record updated succesfully')</script>");
                    student1();
                    Panel1.Visible = false;
                   
                    con.Close();

                }
                else
                {
                    Label1.Text = "Record not updated... try again";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }

            }
        }
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from student where Rollno=@rollno", con);
        cmd.Parameters.AddWithValue("@rollno", TextBox4.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
           
            Response.Write("<script>alert('Record deleted succesfully')</script>");
            student1();
            Panel1.Visible = false;
            con.Close();
        }

        else
        {
            Label1.Text = "Record not deleted... try again";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        con.Close();
    }
}
