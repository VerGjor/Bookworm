using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    Cart myCart;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lblMessage.Text = "Кошничката е празна";
        ImageButton1.Visible = false;
        ImageButton2.Visible = false;
        lblDenar.Visible = false;
        lblIsprazni.Visible = false;
        lblKupi.Visible = false;
        lblTotal.Visible = false;
        lblTotalPrice.Visible = false;


        if (!IsPostBack) {
            if (Session["myCart"] == null)
            {
                Session["myCart"] = new Cart();
            }
            else
            {
                Cart myCart;
                myCart = (Cart)Session["myCart"];
                GridView1.DataSource = myCart.Items;
                GridView1.DataBind();
                

                if (myCart.Total.ToString().Equals("0")){
                    lblMessage.Text = "Кошничката е празна";
                    ImageButton1.Visible = false;
                    ImageButton2.Visible = false;
                    lblDenar.Visible = false;
                    lblIsprazni.Visible = false;
                    lblKupi.Visible = false;
                    lblTotal.Visible = false;
                    lblTotalPrice.Visible = false;
                }
                else
                {
                    lblMessage.Text = "";
                    lblTotalPrice.Text = myCart.Total.ToString();
                    ImageButton1.Visible = true;
                    ImageButton2.Visible = true;
                    lblDenar.Visible = true;
                    lblIsprazni.Visible = true;
                    lblKupi.Visible = true;
                    lblTotal.Visible = true;
                    lblTotalPrice.Visible = true;
                }
                
            }
            
        }
        

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Cart myCart;
        myCart = (Cart)Session["myCart"];
        myCart.Items.Clear();
        GridView1.DataSource = myCart.Items;
        GridView1.DataBind();
        lblMessage.Text = "Кошничката е празна";
        ImageButton1.Visible = false;
        ImageButton2.Visible = false;
        lblDenar.Visible = false;
        lblIsprazni.Visible = false;
        lblKupi.Visible = false;
        lblTotal.Visible = false;
        lblTotalPrice.Visible = false;
        Session["myCart"] = null;
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        Cart myCart;
        myCart = (Cart)Session["myCart"];
        myCart.Remove(gvr.RowIndex);
        GridView1.DataSource = myCart.Items;
        GridView1.DataBind();
        lblMessage.Text = "";
        lblTotalPrice.Text = myCart.Total.ToString();
        if ((Convert.ToInt32(lblTotalPrice.Text)) == 0)
        {
            lblMessage.Text = "Кошничката е празна";
            ImageButton1.Visible = false;
            ImageButton2.Visible = false;
            lblDenar.Visible = false;
            lblIsprazni.Visible = false;
            lblKupi.Visible = false;
            lblTotal.Visible = false;
            lblTotalPrice.Visible = false;
            Session["myCart"] = null;
        }
        else
        {
            ImageButton1.Visible = true;
            ImageButton2.Visible = true;
            lblDenar.Visible = true;
            lblIsprazni.Visible = true;
            lblKupi.Visible = true;
            lblTotal.Visible = true;
            lblTotalPrice.Visible = true;
        }
        
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        Cart myCart;
        myCart = (Cart)Session["myCart"];
        TextBox tb = (TextBox)gvr.FindControl("TextBox1");
        myCart.Update(gvr.RowIndex,Int32.Parse(tb.Text));
        GridView1.DataSource = myCart.Items;
        GridView1.DataBind();
        lblMessage.Text = "";
        lblTotalPrice.Text = myCart.Total.ToString();
        ImageButton1.Visible = true;
        ImageButton2.Visible = true;
        lblDenar.Visible = true;
        lblIsprazni.Visible = true;
        lblKupi.Visible = true;
        lblTotal.Visible = true;
        lblTotalPrice.Visible = true;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Plakjanje.aspx");
    }
}