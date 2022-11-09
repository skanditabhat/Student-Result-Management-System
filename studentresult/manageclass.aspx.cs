using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class manageclass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");

    protected void Page_Load(object sender, EventArgs e)
    {
        string d = DateTime.Now.ToString();
        if (!this.IsPostBack)
        {
            this.getdata();
            Panel1.Visible = false;
        }
    }
    public void getdata()
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        SqlCommand cmd = new SqlCommand("select * from class", con);
        con.Open();
        DataSet dt = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        con.Close();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from class where ID like '" + TextBox1.Text + "%'", con);
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
        Label1.Text = row.Cells[1].Text;
        TextBox2.Text = row.Cells[2].Text;
        TextBox3.Text = row.Cells[3].Text;
        TextBox4.Text = row.Cells[4].Text;
        TextBox5.Text = row.Cells[5].Text;


    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Close();
        using (SqlConnection cn = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Update class set ClassName=@Name,ClassNameNumeric=@cnn,Section=@section,CreationDate=@Cdate where ID=@id"))
            {
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@cnn", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@section", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Cdate", DateTime.Now);
                cmd.Parameters.AddWithValue("@id", Label1.Text.Trim());

                cmd.Connection = cn;
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {

                    Response.Write("<script>alert('Record updated succesfully')</script>");
                    getdata();
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from class where ID=@id", con);
        cmd.Parameters.AddWithValue("@id", Label1.Text);
        int i = cmd.ExecuteNonQuery();
        if(i>0)
        {
            
              Response.Write("<script>alert('Record deleted succesfully')</script>");
                    getdata();
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

