using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class managesubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        if (!this.IsPostBack)
        {
            this.getdata();
        }
    }

    public void getdata()
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        SqlCommand cmd = new SqlCommand("select * from subject", con);
        con.Close();
        con.Open();
        DataSet dt = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        con.Close();



    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        GridViewRow row = GridView2.SelectedRow;
        Label5.Text = row.Cells[1].Text;
        TextBox1.Text = row.Cells[2].Text;
        TextBox2.Text = row.Cells[3].Text;
        

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        using (SqlConnection cn = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Update subject set SubjectName=@Name,SubjectCode=@code where ID=@id"))
            {
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@code", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@id", Label5.Text.Trim());

                cmd.Connection = cn;
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {

                    Response.Write("<script>alert('Record updated succesfully')</script>");
                    getdata();
                    Panel1.Visible = false;
                   
                }
                else
                {
                    Label5.Text = "Record not updated... try again";
                    Label5.ForeColor = System.Drawing.Color.Red;
                }

            }
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();

        SqlCommand cmd = new SqlCommand("Delete from subject where ID=@id", con);
        cmd.Parameters.AddWithValue("@id", Label5.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {

            Response.Write("<script>alert('Record deleted succesfully')</script>");
            getdata();
            Panel1.Visible = false;
           
        }

        else
        {
            Label5.Text = "Record not deleted... try again";
            Label5.ForeColor = System.Drawing.Color.Red;
        }
        con.Close();
    }
}