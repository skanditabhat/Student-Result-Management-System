using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class managecombination : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select * from scombination", con);
        con.Close();
        con.Open();
        DataSet dt = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
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
        TextBox1.Text = row.Cells[2].Text;
        TextBox2.Text = row.Cells[3].Text;
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();

        SqlCommand cmd = new SqlCommand("Delete from scombination where ID=@id", con);
        cmd.Parameters.AddWithValue("@id", Label1.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {

            Response.Write("<script>alert('Record deleted succesfully')</script>");
            getdata();
            Panel1.Visible = false;

        }

        else
        {
            Label1.Text = "Record not deleted... try again";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        con.Close();
    }
}