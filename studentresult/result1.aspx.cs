using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class result1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            class1();
            Panel1.Visible = false;
            submit.Enabled = false;
           

        }

    }

    public void class1()
    {
        Panel1.Visible = false;
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select distinct (Class) From scombination ", con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        DropDownList1.Items.Clear();
        DropDownList1.DataTextField = "Class";
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("Select Class"));
        con.Close();
    }

    public void name()
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select *  From student where Class='" + DropDownList1.SelectedValue + "'", con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        DropDownList2.Items.Clear();
        DropDownList2.DataTextField = "StdName";
        DropDownList2.DataSource = dt;
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("Select Student Name"));
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        name();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        roll();
        TextBox2.Text = DropDownList2.SelectedValue.ToString();
        TextBox3.Text = DropDownList1.SelectedValue.ToString();
        TextBox1.ReadOnly = true;
        TextBox2.ReadOnly = true;
        TextBox3.ReadOnly = true;

    }
    public void roll()
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("select Rollno from student where StdName='" +DropDownList2.SelectedValue+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr["Rollno"].ToString();
        }
        dr.Close();
        con.Close();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        //con.Open();
        //SqlCommand cmd = new SqlCommand("insert into result1 (RollNo,StudentName,ClassName,English,Kannada,EVS,Math,GK,Total,Percentage) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+txteng.Text+"','"+txtkan.Text+"','"+txtevs.Text+"'.'"+txtmath.Text+"','"+txtgk.Text+"','"+TextBox9.Text+"','"+TextBox10.Text+"',)",con) ;
        //int i = cmd.ExecuteNonQuery();
        //con.Close();
        //if (i > 0)
        //{
            //Response.Write("<script>alert('Record Saved')</Script>");
        //}
        //else
       // {
           // Response.Write("<script>alert('error')</Script>");
        //}
       
         using (SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into result1(RollNo,StudentName,ClassName,English,Kannada,EVS,Math,GK,Total,Percentage) values(@rollno,@stdname,@clsname,@english,@kannada,@evs,@math,@gk,@total,@percentage)"))
            {
                 cmd.Parameters.AddWithValue("@rollno", TextBox1.Text);
                 cmd.Parameters.AddWithValue("@stdname", TextBox2.Text);
                 cmd.Parameters.AddWithValue("@clsname", TextBox3.Text);
                cmd.Parameters.AddWithValue("@english",txteng.Text );
                cmd.Parameters.AddWithValue("@kannada",txtkan.Text );
                cmd.Parameters.AddWithValue("@evs",txtevs.Text );
                cmd.Parameters.AddWithValue("@math",txtmath.Text );
                cmd.Parameters.AddWithValue("@gk",txtgk.Text );
                cmd.Parameters.AddWithValue("@total", TextBox9.Text);
                cmd.Parameters.AddWithValue("@percentage", TextBox10.Text);
                cmd.Connection = con;

                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Record saved succesfully')</script>");
                }

                con.Close();

            }
            txteng.Text = String.Empty;
            txtkan.Text = String.Empty;
            txtevs.Text = String.Empty;
            txtmath.Text = String.Empty;
            txtgk.Text = String.Empty;
           TextBox9.Text = String.Empty;
            TextBox10.Text = String.Empty;

           
            }

    }
protected void  Button3_Click(object sender, EventArgs e)
{
    TextBox9.Text=Convert.ToString(Convert.ToInt32(txteng.Text)+Convert.ToInt32(txtkan.Text)+Convert.ToInt32(txtevs.Text)+Convert.ToInt32(txtmath.Text)+Convert.ToInt32(txtgk.Text));
    int aa=Convert.ToInt32(TextBox9.Text);
    int bb=(aa*100)/500;
    TextBox10.Text=Convert.ToString(bb)+"%";
     TextBox9.ReadOnly = true;
        TextBox10.ReadOnly = true;
        submit.Enabled = true;
}
}