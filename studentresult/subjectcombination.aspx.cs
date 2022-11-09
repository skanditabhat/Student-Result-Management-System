 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class subjectcombination : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            cls();
            subject();

        }
    }

    public void cls()
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select distinct * from class ", con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        dt.Columns.Add("Name", typeof(string), "ClassName +' '+ 'Section' +' - '+Section");
        DropDownList1.Items.Clear();
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataValueField = "ID";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("Select Class Name"));
        con.Close();
    }

    public void subject()
    {
        SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select distinct * from subject ", con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        DropDownList2.Items.Clear();
        DropDownList2.DataTextField = "SubjectName";
        DropDownList2.DataSource = dt;
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("Select Subject Name"));
        con.Close();
    }
    protected void add_Click(object sender, EventArgs e)
    {
        string AA = DropDownList1.SelectedItem.ToString();
        using (SqlConnection con = new SqlConnection("Data source=hp\\sqlexpress;Initial Catalog=SRMSDB;Integrated Security=true"))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into scombination(Class,Subject)values(@Name,@Subject)"))
            {
                cmd.Parameters.AddWithValue("@Name",AA);
                cmd.Parameters.AddWithValue("@Subject", DropDownList2.Text);
               

                cmd.Connection = con;

                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Record saved succesfully')</script>");
                    cls();
                    subject();
                }

                con.Close();

            }
        }
    }
}