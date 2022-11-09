using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class manageresult1 : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select * from result1", con);
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
        txtrollno.Text = row.Cells[1].Text;
       txtname.Text = row.Cells[2].Text;
        txtclass.Text = row.Cells[3].Text;
        txteng.Text = row.Cells[4].Text;
        txtkan.Text = row.Cells[5].Text;
        txtevs.Text = row.Cells[6].Text;
        txtmath.Text = row.Cells[7].Text;
        txtgk.Text = row.Cells[8].Text;
        txttotal.Text = row.Cells[9].Text;
        txtperc.Text = row.Cells[10].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Update result1 set StudentName=@stdname,ClassName=@clsname,English=@english,Kannada=@kannada,EVS=@evs,Math=@math,GK=@gk,Total=@total,Percentage=@percentage where RollNo=@rollno"))
            {
                cmd.Parameters.AddWithValue("@rollno", txtrollno.Text.Trim());
                cmd.Parameters.AddWithValue("@stdname", txtname.Text.Trim());
                cmd.Parameters.AddWithValue("@clsname", txtclass.Text.Trim());
                cmd.Parameters.AddWithValue("@english", txteng.Text.Trim());
                cmd.Parameters.AddWithValue("@kannada", txtkan.Text.Trim());
                cmd.Parameters.AddWithValue("@evs", txtevs.Text.Trim());
                cmd.Parameters.AddWithValue("@math", txtmath.Text.Trim());
                cmd.Parameters.AddWithValue("@gk", txtgk.Text.Trim());
                txttotal.Text = Convert.ToString(Convert.ToInt32(txteng.Text) + Convert.ToInt32(txtkan.Text) + Convert.ToInt32(txtevs.Text) + Convert.ToInt32(txtmath.Text) + Convert.ToInt32(txtgk.Text));
                int aa = Convert.ToInt32(txttotal.Text);
                int bb = (aa * 100) / 500;
                txtperc.Text = Convert.ToString(bb) + "%";
                cmd.Parameters.AddWithValue("@total", txttotal.Text);
                cmd.Parameters.AddWithValue("@percentage", txtperc.Text);
                cmd.Connection = cn;
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {

                    Response.Write("<script>alert('Record updated succesfully')</script>");
                    getdata();
                    Panel1.Visible = true;

                }
                else
                {
                   
                }

            }
        }
    }
   // protected void Button3_Click(object sender, EventArgs e)
   // {
      //  txttotal.Text = Convert.ToString(Convert.ToInt32(txteng.Text) + Convert.ToInt32(txtkan.Text) + Convert.ToInt32(txtevs.Text) + Convert.ToInt32(txtmath.Text) + Convert.ToInt32(txtgk.Text));
       // int aa = Convert.ToInt32(txttotal.Text);
       // int bb = (aa * 100) / 500;
        //txtperc.Text = Convert.ToString(bb) + "%";
    //}
    protected void Button2_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();

        SqlCommand cmd = new SqlCommand("Delete from result1 where RollNo=@rollno", con);
        cmd.Parameters.AddWithValue("@rollno", txtrollno.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {

            Response.Write("<script>alert('Record deleted succesfully')</script>");
            getdata();
            Panel1.Visible = false;

        }
        else
        {
        }
     

       
       
        con.Close();
    }
    }
