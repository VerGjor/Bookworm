using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Plakjanje : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for(int i =1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }

            for(int i=2017; i <= 2050; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string scriptText = "alert('Плаќањето е успешно'); window.location='Pocetna.aspx'";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
        Session["myCart"] = null;
    }
}