<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" %>

<!DOCTYPE html>
<script runat="server">

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

    }

    protected void Button7_Click(object sender, ImageClickEventArgs e)
    {
        if(Session["myCart"] == null)
        {
            myCart = new Cart();
            Session["myCart"] = myCart;
        }

        myCart = (Cart)Session["myCart"];

        myCart.Add(new CartItem("Images/278_9_28_10__2__4_2014igra%20na%20tronovi.jpg","Џорџ Р.Р. Мартин","Игра на тронови", 499));
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 525px;
            margin-right: 55px;
        }
        .auto-style3 {
            height: 92px;
            width: 1716px;
        }
        .auto-style4 {
            height: 92px;
            width: 481px;
        }
        .auto-style5 {
            height: 423px;
        }
        .auto-style7 {
            height: 28px;
        }
        .auto-style38 {
            height: 24px;
        }
        .auto-style98 {
            height: 1px;
            width: 1716px;
        }
        .auto-style100 {
            height: 1px;
            width: 481px;
        }
        .auto-style103 {
            height: 46px;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style104 {
            height: 92px;
            width: 3594px;
        }
        .auto-style105 {
            height: 1px;
            width: 3594px;
        }
        .auto-style106 {
            height: 191px;
        }
        .auto-style107 {
            height: 14px;
        }
        .auto-style108 {
            height: 46px;
            width: 1716px;
            font-size: x-large;
            color: #003366;
        }
        .auto-style109 {
            color: rgb(0, 51, 102);
        }
        .auto-style110 {
            width: 173px;
            height: 230px;
        }
        .auto-style111 {
            height: 191px;
            width: 1534px;
        }
        .auto-style112 {
            height: 191px;
            width: 220px;
        }
        .auto-style113 {
            font-size: large;
            color: #003366;
        }
        .auto-style114 {
            font-size: large;
            color: #000000;
        }
        .auto-style115 {
            font-size: medium;
            color: #000000;
        }
        .auto-style116 {
            font-size: medium;
            color: #003366;
        }
        .auto-style117 {
            background-color: #FFFFFF;
        }
        .auto-style118 {
            color: rgb(0, 51, 102);
            background-color: #FFFFFF;
        }
        .auto-style119 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1" style="position: absolute; margin-top: 3px">
                <tr>
                    <td class="auto-style3" colspan="3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" />
                    </td>
                    <td class="auto-style104" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div>
                        <asp:Menu ID="Menu1" runat="server" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#003366" Orientation="Horizontal" StaticSubMenuIndent="15px" BorderStyle="None">
                            <DynamicHoverStyle BackColor="#284E98" Font-Bold="True" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#B5C7DE" />
                            <DynamicSelectedStyle BackColor="#507CD1" />
                            <Items>
                                <asp:MenuItem NavigateUrl="~/Pocetna.aspx" Text="Почетна" Value="Почетна"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Category.aspx" Text="Категории" Value="Категории"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Kontakt.aspx" Text="Контакт" Value="Контакт"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle ForeColor="#336699" Font-Bold="True" Font-Size="Medium" />
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticMenuStyle HorizontalPadding="10px" />
                            <StaticSelectedStyle Font-Bold="True" Font-Size="Medium" ForeColor="#006699" />
                        </asp:Menu>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98" colspan="3">
                    </td>
                    <td class="auto-style105" colspan="2"> </td>
                    <td class="auto-style100">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageAlign="Middle" ImageUrl="~/Images/cart-button.png" PostBackUrl="~/ShoppingCart.aspx" Width="32px" OnClick="ImageButton1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="6" style="background-image: url('images/slider/1x.jpg'); background-repeat: no-repeat; background-position: center center; background-attachment: fixed">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Bookworm | Вашиот патоказ кон знаењето"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="6"></td>
                </tr>
                <tr>
                    <td class="auto-style108" colspan="3" style="background-color: #0D2E5B">
                        <strong style="font-family: Arial">&nbsp;&nbsp; <span class="auto-style119">Наша препорака</span></strong></td>
                    <td class="auto-style106" rowspan="2">
                    </td>
                    <td class="auto-style103" colspan="2" style="background-color: #0D2E5B"><strong style="font-family: Arial">Цитат на денот</strong></td>
                </tr>
                <tr>
                    <td class="auto-style112">
                    &nbsp;&nbsp;&nbsp;
                        <img class="auto-style110" src="Images/278_9_28_10__2__4_2014igra%20na%20tronovi.jpg" style="vertical-align: middle; text-align: center" /></td>
                    <td class="auto-style111">
                        <asp:Panel ID="Panel1" runat="server" Height="214px" Font-Names="Arial">
                            <strong><span class="auto-style113">Игра на тронови - </span><span class="auto-style114">Џорџ Р.Р. Мартин
                            <br />
                            <br />
                            </span></strong><span class="auto-style115">Вистинско ремек дело кое ги обединува сите елементи на жанрот епска фантастика. Магија, интриги, романтика и авантура ги исполнуваат страниците на првиот том од оваа епска серија, која сигурно ќе ги одушеви не само љубителите на овој жанр, туку и поширокиот круг на читатели.
                            <br />
                            <br />
                            </span><span class="auto-style116"><strong>Цена:</strong></span><span class="auto-style115"> 499 денари.<br />
                            <br />
                            <strong><span class="auto-style114">
                            <asp:ImageButton ID="Button8" runat="server" Height="34px" ImageUrl="~/Images/add-button.png" OnClick="Button7_Click" Width="32px" />
                            </span></strong>
                            </span></asp:Panel>
                    </td>
                    <td class="auto-style106">
                        &nbsp;</td>
                    <td class="auto-style107" colspan="2" style="font-family: Arial">
                        <span style="color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style117">„</span><span style="color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em><span class="auto-style117">Похрабар е тој кој ги победува своите страсти од тој кој ги победува своите непријатели, бидејќи најтешката победа е победата врз себеси.</span></em></span><span style="color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style117">“</span><span style="color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><br class="auto-style117" />
                        <br class="auto-style117" />
                        </span>
                        <span style="color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style117">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</span><span class="auto-style118" style="font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"> </span><span class="auto-style109" style="font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"> <strong>
                        <span class="auto-style117">Аристотел</span></strong></span></td>
                </tr>
                <tr>
                    <td class="auto-style38" colspan="6"></td>
                </tr>
                <tr>
                    <td colspan="6" style="background-color: #000000">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
