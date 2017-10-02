using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Cart myCart;
    public string CurrentCategory
    {
        get
        {
            return (string) ViewState["cat"];
        }
        set
        {
            ViewState["cat"] = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        mvCategory.ActiveViewIndex = 0;
        Label8.Visible = false;
        if (!IsPostBack)
        {
            CurrentCategory = "Роман";
            CurrentPageIndex = 0;
            Panel1.Visible = false;
            showData();
        }
    }

    protected void showData()
    {
        //Label1.Text = CurrentPageIndex + " " + CurrentCategory;
        PagedDataSource pgd = new PagedDataSource();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

        string sqlString = "SELECT * FROM Books WHERE Kategorija='"+CurrentCategory+"' ORDER BY "+DropDownList1.SelectedValue;

        SqlCommand cmd = new SqlCommand(sqlString, con);

        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = cmd;

        DataSet ds = new DataSet();
        
        try
        {
            con.Open();

            adapter.Fill(ds, "Books");

            pgd.DataSource = ds.Tables[0].DefaultView;
            pgd.CurrentPageIndex = CurrentPageIndex;
            pgd.AllowPaging = true;
            pgd.PageSize = 8;

            Button1.Enabled = !(pgd.IsFirstPage);
            Button2.Enabled = !(pgd.IsLastPage);

            if(Button1.Enabled == false && Button2.Enabled == false)
            {
                Button1.Visible = false;
                Button2.Visible = false;
            }
            else if (Button1.Enabled == false && Button2.Enabled == true)
            {
                Button1.Visible = false;
                Button2.Visible = true;
            }
            else if (Button1.Enabled == true && Button2.Enabled == false)
            {
                Button1.Visible = true;
                Button2.Visible = false;
            }
            else
            {
                Button1.Visible = true;
                Button2.Visible = true;
            }


            DataList1.DataSource = pgd;
            DataList1.DataBind();
            DataList1.Visible = true;
            Panel1.Visible = false;
        }
        catch (Exception err)
        {
            //Label1.Text = err.Message;
        }
        finally
        {
            con.Close();
        }
    }

    public int CurrentPageIndex
    {
        get
        {
            if (ViewState["pg"] == null)
                return 0;
            else
                return Convert.ToInt16(ViewState["pg"]);
        }
        set
        {
            ViewState["pg"] = value;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        CurrentPageIndex--;
        showData();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        CurrentPageIndex++;
        showData();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        //Label1.Text = ((Button) sender).Text;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT * FROM Books WHERE Naslov='" + ((Button)sender).Text + "'";

        try
        {
            con.Open();
            SqlDataReader citac = cmd.ExecuteReader();

            if (citac.Read())
            {
                lblAvtor.Text = citac["Avtor"].ToString();
                lblNaslov.Text = citac["Naslov"].ToString();
                lblOriginalen.Text = citac["OriginalenNaslov"].ToString();
                lblCena.Text = citac["Cena"].ToString();
                lblISBN.Text = citac["ISBN"].ToString();
                lblGodina.Text = citac["GodinaNaIzdavanje"].ToString();
                lblOpis.Text = citac["Opis"].ToString();
                lblKukja.Text = citac["IzdavachkaKukja"].ToString();
                Image2.ImageUrl = citac["Slika"].ToString();
            }
            citac.Close();
            mvCategory.ActiveViewIndex = 1;
            DataList1.Visible = false;
            Panel1.Visible = true;
        }
        catch (Exception err)
        {
           
        }
        finally
        {
            con.Close();
        }
    }

    
    protected void Button7_Click(object sender, EventArgs e)
    {
        if(Session["myCart"] == null)
        {
            myCart = new Cart();
            myCart.Add(new CartItem(Image2.ImageUrl, lblAvtor.Text, lblNaslov.Text, Int32.Parse(lblCena.Text)));
            Session["myCart"] = myCart;
        }
        else
        {
            myCart = (Cart)Session["myCart"];
            CartItem tempItem = new CartItem(Image2.ImageUrl, lblAvtor.Text, lblNaslov.Text, Int32.Parse(lblCena.Text));
            bool flag = true;
            foreach (CartItem ci in myCart.Items)
            {
                if (ci.Equals(tempItem))
                {
                    flag = false;
                    ci.Kolicina = ci.Kolicina + 1;
                    break;
                }
            }
            if (flag)
            {
                myCart.Add(tempItem);
            }
            Session["myCart"] = myCart;
        }
        mvCategory.ActiveViewIndex = 1;
        // Response.Redirect("ShoppingCart.aspx");
    }

    protected void mvCategory_ActiveViewChanged(object sender, EventArgs e)
    {
            
    }

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        /*
        if (TreeView1.SelectedNode.Text.Equals("Романи"))
        {
            CurrentCategory = "Роман";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Научна фантастика"))
        {
            CurrentCategory = "Научна фантастика";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Бизнис"))
        {
            CurrentCategory = "Бизнис";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Детски книги"))
        {
            CurrentCategory = "Детски книги";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Лектири"))
        {
            CurrentCategory = "Лектири";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Живот"))
        {
            CurrentCategory = "Живот";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Здравје"))
        {
            CurrentCategory = "Здравје";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Поезија"))
        {
            CurrentCategory = "Поезија";
            CurrentPageIndex = 0;
            showData();
        }*/
        CurrentCategory = TreeView1.SelectedNode.Text;
        CurrentPageIndex = 0;
        showData();
        Session["selected"] = TreeView1.SelectedNode.Text;
        TextBox1.Text = "";
    }

    protected void TreeView2_SelectedNodeChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Session["selected"] = TreeView2.SelectedNode.Text;
        CurrentCategory = TreeView2.SelectedNode.Text;
        CurrentPageIndex = 0;
        showData();
        /*if (TreeView2.SelectedNode.Text.Equals("Романи"))
        {
            CurrentCategory = "Роман";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView2.SelectedNode.Text.Equals("Научна фантастика"))
        {
            CurrentCategory = "Научна фантастика";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Бизнис"))
        {
            CurrentCategory = "Бизнис";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Детски книги"))
        {
            CurrentCategory = "Детски книги";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Лектири"))
        {
            CurrentCategory = "Лектири";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Живот"))
        {
            CurrentCategory = "Живот";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Здравје"))
        {
            CurrentCategory = "Здравје";
            CurrentPageIndex = 0;
            showData();
        }
        else if (TreeView1.SelectedNode.Text.Equals("Поезија"))
        {
            CurrentCategory = "Поезија";
            CurrentPageIndex = 0;
            showData();
        }*/
    }

    protected void lblBack_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        if (Session["selected"] == null)
        {
            CurrentCategory = "Роман";
            CurrentPageIndex = 0;
            showData();
        }else
            {
                CurrentCategory = (string)Session["selected"];
                CurrentPageIndex = 0;
                showData();
            }
        /*else if (((string)Session["selected"]).Equals("Романи"))
            {
                CurrentCategory = "Роман";
                CurrentPageIndex = 0;
                showData();
            }
            else if (((string)Session["selected"]).Equals("Научна фантастика"))
            {
                CurrentCategory = "Научна фантастика";
                CurrentPageIndex = 0;
                showData();
            }
            else if (((string)Session["selected"]).Equals("Бизнис"))
            {
                CurrentCategory = "Бизнис";
                CurrentPageIndex = 0;
                showData();
            }
            else if (((string)Session["selected"]).Equals("Детски книги"))
            {
                CurrentCategory = "Детски книги";
                CurrentPageIndex = 0;
                showData();
            }
            else if (((string)Session["selected"]).Equals("Лектири"))
            {
                CurrentCategory = "Лектири";
                CurrentPageIndex = 0;
                showData();
            }
            else if (((string)Session["selected"]).Equals("Живот"))
            {
                CurrentCategory = "Живот";
                CurrentPageIndex = 0;
                showData();
            }
            else if (((string)Session["selected"]).Equals("Здравје"))
            {
                CurrentCategory = "Здравје";
                CurrentPageIndex = 0;
                showData();
            }
            else if (((string)Session["selected"]).Equals("Поезија"))
            {
                CurrentCategory = "Поезија";
                CurrentPageIndex = 0;
                showData();
            }*/
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        showData();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text.Length == 0)
        {
            Label8.Visible = true;
            Label8.Text = "Немате внесено наслов за пребарување";
        }
        else {
            Label8.Visible = false;
            string find = "SELECT * FROM BOOKS WHERE(OriginalenNaslov like '%' + @text + '%' or Naslov like '%' + @text + '%' or Avtor like '%' + @text + '%')";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        
            SqlCommand cmd = new SqlCommand(find, con);
            cmd.Parameters.Add("@text", SqlDbType.NVarChar).Value = TextBox1.Text;

            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();

            adapter.Fill(ds, "Text");

            DataList1.DataSource = ds;
            DataList1.DataBind();

            if (DataList1.Items.Count == 0)
            {
                Label8.Visible = true;
                Label8.Text = "Насловот што го внесовте не постои";
            }
            else
            {
                Label8.Visible = false;
                Label8.Text = "";
            }

            Button1.Visible = false;
            Button2.Visible = false;
            }
    }
}