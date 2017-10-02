using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kontakt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string scriptText = "alert('Пораката е испратена'); window.location='Kontakt.aspx'";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}