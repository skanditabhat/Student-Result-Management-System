﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manageresults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("manageresult1.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("result2.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("result3.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("result4.aspx");
    }
}