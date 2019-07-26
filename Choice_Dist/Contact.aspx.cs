using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtEmail.Text = string.Empty;
        txtMessage.Text = string.Empty;
        txtName.Text = string.Empty;
        txtPhone.Text = string.Empty;
        DropDownList1.SelectedIndex = 0;
    }
}