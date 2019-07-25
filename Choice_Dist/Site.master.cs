using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{   

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["userLoggedIn"] == null)
        //{

        //    Response.Redirect("~/Login.aspx");
        //}
        //else
        //{
        //    if(Session["userRole"].ToString()=="Admin")
        //    {
        //        menu.Visible = true;
        //    }
        //    else
        //    {
        //        menu.Visible = false;
        //    }
        //}

    }

    protected void imgLogOut_Click(object sender, ImageClickEventArgs e)
    {
        //Session["userLoggedIn"] = null;
        //Response.Redirect("~/Login.aspx");
    }
}