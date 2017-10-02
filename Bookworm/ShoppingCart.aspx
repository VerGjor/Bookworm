<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style8 {
            width: 100%;
        }
        .auto-style11 {
            width: 165px;
        }
        .auto-style16 {
            width: 715px;
        }
        #Menu3 { background-color:White; }
	    .auto-style19 {
            width: 165px;
            height: 6px;
        }
        .auto-style20 {
            height: 6px;
        }
        .auto-style21 {
            width: 715px;
            height: 6px;
            font-size: medium;
            color: #003366;
        }
        .auto-style9 {
            height: 238px;
        }
        .auto-style22 {
            height: 284px;
            width: 334px;
        }
        .auto-style23 {
            height: 87px;
            width: 334px;
        }
        .auto-style25 {
            color: #003366;
        }
        .auto-style26 {
            font-size: x-small;
        }
        .auto-style27 {
            width: 334px;
        }
        .auto-style28 {
            width: 1654px;
        }
        .auto-style29 {
            width: 310px;
        }
        .auto-style30 {
            height: 6px;
            width: 310px;
        }
        .auto-style31 {
            height: 35px;
        }
        .auto-style32 {
            height: 72px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/logo.png" />
                        </td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style16" colspan="2">&nbsp;</td>
                        <td>
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
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19"></td>
                        <td class="auto-style30"></td>
                        <td class="auto-style21" colspan="2" style="font-family: Arial">
                            &nbsp;</td>
                        <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28" colspan="3" rowspan="4" style="background-image: url('Images/book_PNG2117.png'); background-repeat: no-repeat; background-attachment: scroll; background-position: right top">
                            <span class="auto-style25"><strong><span class="auto-style26">
                            <br />
                            </span></strong></span>
                           
                        </td>
                        <td class="auto-style23">
                            <strong style="font-size: large; font-weight: bold; font-family: Arial"><span class="auto-style25">Содржина на кошничката:</span><br />
                            </strong>
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style31" rowspan="2">
                            <span class="auto-style25"><strong><span class="auto-style26">
                            <asp:Label ID="lblTotal" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#003366" Text="Вкупно:"></asp:Label>
                            </span></strong></span>
                            <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                            <span class="auto-style25"><strong><span class="auto-style26">
                            <asp:Label ID="lblDenar" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black" Text="денари"></asp:Label>
                            <br />
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/Images/buy-button.png" Width="40px" OnClick="ImageButton1_Click" />
                            <asp:Label ID="lblKupi" runat="server" Font-Size="Medium" Text="Купи ги книгите"></asp:Label>
                            <br />
                            <br />
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/Images/clear-button.png" OnClick="ImageButton2_Click" Width="40px" />
                            <asp:Label ID="lblIsprazni" runat="server" Font-Size="Medium" Text="Испразни ја кошничката"></asp:Label>
                            </span></strong></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27" style="font-family: Arial; font-weight: bold" rowspan="2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="98px" Width="335px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ImageField DataImageUrlField="Slika" HeaderText="Слика">
                    <ControlStyle Height="200px" Width="140px" />
                </asp:ImageField>
                <asp:ButtonField CommandName="select" DataTextField="Naslov" HeaderText="Наслов" Text="Button" />
                <asp:TemplateField HeaderText="Количина">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Text='<%# Eval("Kolicina") %>' Width="49px"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Промени" />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Избриши" OnClick="Button1_Click" />
                        <br />
                        <br />
                       </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Cena" HeaderText="Цена" ReadOnly="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
                            <br />
&nbsp;
                        </td>
                        <td class="auto-style32">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5" style="background-color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                </table>
    </form>
</body>
</html>
