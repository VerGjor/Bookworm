<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 396px;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style6 {
            width: 156px;
        }
        .auto-style7 {
            height: 55px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            height: 238px;
        }
        .auto-style10 {
            height: 88px;
            width: 246px;
        }
        .auto-style11 {
            width: 165px;
        }
        .auto-style16 {
            width: 505px;
        }
        .auto-style17 {
            width: 340px;
            height: 6px;
        }
        .auto-style18 {
            height: 86px;
            width: 246px;
        }
        .auto-style19 {
            width: 165px;
            height: 6px;
        }
        .auto-style20 {
            height: 6px;
        }
        .auto-style22 {
            width: 156px;
            height: 55px;
        }
        .auto-style23 {
            width: 275px;
        }
        .auto-style24 {
            width: 340px;
            height: 63px;
        }
        .auto-style25 {
            height: 63px;
        }
        .auto-style26 {
            width: 340px;
        }
        .auto-style27 {
            height: 284px;
            width: 340px;
        }
        .auto-style28 {
            width: 186px;
        }
        .auto-style29 {
            height: 284px;
            width: 186px;
        }
        .auto-style30 {
            width: 186px;
            height: 6px;
        }
        .auto-style32 {
            width: 356px;
        }
        .auto-style33 {
            height: 6px;
            width: 124px;
        }
        .auto-style34 {
            width: 196px;
        }
        .auto-style35 {
            height: 6px;
            width: 196px;
        }
        .auto-style36 {
            height: 86px;
            width: 196px;
        }
        .auto-style37 {
            height: 221px;
            width: 196px;
        }
        .auto-style38 {
            height: 6px;
            width: 505px;
        }
        .auto-style39 {
            height: 236px;
            width: 246px;
        }
        .auto-style40 {
            height: 88px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="mvCategory" runat="server" OnActiveViewChanged="mvCategory_ActiveViewChanged">
            <asp:View ID="vBooks" runat="server">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style24">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/logo.png" />
                        </td>
                        <td class="auto-style25" colspan="2">&nbsp;</td>
                        <td class="auto-style25" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div>
                                <asp:Menu ID="Menu1" runat="server" BackColor="White" BorderStyle="None" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#003366" Orientation="Horizontal" StaticSubMenuIndent="15px">
                                    <DynamicHoverStyle BackColor="#284E98" Font-Bold="True" ForeColor="White" />
                                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                    <DynamicMenuStyle BackColor="#B5C7DE" />
                                    <DynamicSelectedStyle BackColor="#507CD1" />
                                    <Items>
                                        <asp:MenuItem NavigateUrl="~/Pocetna.aspx" Text="Почетна" Value="Почетна"></asp:MenuItem>
                                        <asp:MenuItem NavigateUrl="~/Category.aspx" Text="Категории" Value="Категории"></asp:MenuItem>
                                        <asp:MenuItem NavigateUrl="~/Kontakt.aspx" Text="Контакт" Value="Контакт"></asp:MenuItem>
                                    </Items>
                                    <StaticHoverStyle Font-Bold="True" Font-Size="Medium" ForeColor="#336699" />
                                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                    <StaticMenuStyle HorizontalPadding="10px" />
                                    <StaticSelectedStyle Font-Bold="True" Font-Size="Medium" ForeColor="#006699" />
                                </asp:Menu>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style28">
                            &nbsp;</td>
                        <td class="auto-style23">
                            <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Сортирај по:"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="Naslov">Наслов</asp:ListItem>
                                <asp:ListItem Value="Cena">Цена</asp:ListItem>
                                <asp:ListItem Value="GodinaNaIzdavanje">Година на издавање</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style32">
                            <br />
                            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
                            &nbsp;&nbsp;<asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Пребарај" />
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageAlign="Right" ImageUrl="~/Images/cart-button.png" PostBackUrl="~/ShoppingCart.aspx" Width="33px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <asp:TreeView ID="TreeView1" runat="server" NodeIndent="10" ShowExpandCollapse="False" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                                <HoverNodeStyle Font-Underline="False" ForeColor="#5555DD" Font-Bold="True" Font-Italic="False" Font-Size="Small" />
                                <Nodes>
                                    <asp:TreeNode Text="Категории" Value="Категории" Checked="True" Expanded="True" SelectAction="None">
                                        <asp:TreeNode Text="Роман" Value="Романи"></asp:TreeNode>
                                        <asp:TreeNode Text="Научна фантастика" Value="Научна фантастика"></asp:TreeNode>
                                        <asp:TreeNode Text="Бизнис" Value="Бизнис"></asp:TreeNode>
                                        <asp:TreeNode Text="Детски книги" Value="Детски книги"></asp:TreeNode>
                                        <asp:TreeNode Text="Лектири" Value="Лектири"></asp:TreeNode>
                                        <asp:TreeNode Text="Живот" Value="Живот"></asp:TreeNode>
                                        <asp:TreeNode Text="Здравје" Value="Здравје"></asp:TreeNode>
                                        <asp:TreeNode Text="Поезија" Value="Поезија"></asp:TreeNode>
                                    </asp:TreeNode>
                                </Nodes>
                                <NodeStyle Font-Names="Verdana" Font-Size="Small" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                <ParentNodeStyle Font-Bold="True" Font-Size="Large" />
                                <RootNodeStyle Font-Bold="True" Font-Size="Medium" ForeColor="#003366" />
                                <SelectedNodeStyle Font-Underline="False" ForeColor="#006699" HorizontalPadding="0px" VerticalPadding="0px" Font-Bold="True" Font-Size="Small" />
                            </asp:TreeView>
                        </td>
                        <td class="auto-style30">&nbsp;</td>
                        <td class="auto-style9" colspan="3" rowspan="2">
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:DataList ID="DataList1" runat="server" CellPadding="7" RepeatColumns="4" RepeatDirection="Horizontal" Width="463px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Font-Underline="False" ForeColor="Black" GridLines="Horizontal" Height="3px" CellSpacing="7">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="199px" ImageUrl='<%# Eval("Slika") %>' Width="149px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" Font-Italic="False" Font-Underline="True" Height="30px" OnClick="Button3_Click" Text='<%# Eval("Naslov") %>' Width="147px" />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Cena") %>'></asp:Label>
                                    &nbsp;мкд.
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27" style="background-image: url('Images/book_PNG2117.png'); background-repeat: no-repeat; background-position: right -120px; background-attachment: inherit;"></td>
                        <td class="auto-style29"></td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Button1" runat="server" Height="37px" ImageUrl="~/Images/previous-button.png" OnClick="Button1_Click" Width="40px" AlternateText="Врати се назад" />
                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Button2" runat="server" Height="37px" ImageUrl="~/Images/next-button.png" OnClick="Button2_Click" Width="40px" AlternateText="Следна страница" />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" style="background-color: #000000">&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            
            <asp:View ID="vDetails" runat="server">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/logo.png" />
                        </td>
                        <td class="auto-style34">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td colspan="2">
                            <asp:Menu ID="Menu7" runat="server" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#003366" Orientation="Horizontal" StaticSubMenuIndent="15px" BorderStyle="None">
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
                        <td class="auto-style35"></td>
                        <td class="auto-style38">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="lblBack" runat="server" AlternateText="Врати се назад" Height="37px" ImageAlign="Left" ImageUrl="~/Images/previous-button.png" OnClick="lblBack_Click" Width="40px" />
                        </td>
                        <td class="auto-style33">&nbsp;</td>
                        <td class="auto-style20">
                            <asp:ImageButton ID="ImageButton3" runat="server" AlternateText="Количка со продукти" Height="32px" ImageAlign="Right" ImageUrl="~/Images/cart-button.png" PostBackUrl="~/ShoppingCart.aspx" Width="33px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                            <br />
                            <asp:TreeView ID="TreeView2" runat="server" NodeIndent="10" OnSelectedNodeChanged="TreeView2_SelectedNodeChanged" ShowExpandCollapse="False">
                                <HoverNodeStyle Font-Bold="True" Font-Italic="False" Font-Size="Small" Font-Underline="False" ForeColor="#5555DD" />
                                <Nodes>
                                    <asp:TreeNode Checked="True" Expanded="True" SelectAction="None" Text="Категории" Value="Категории">
                                        <asp:TreeNode Text="Роман" Value="Романи"></asp:TreeNode>
                                        <asp:TreeNode Text="Научна фантастика" Value="Научна фантастика"></asp:TreeNode>
                                        <asp:TreeNode Text="Бизнис" Value="Бизнис"></asp:TreeNode>
                                        <asp:TreeNode Text="Детски книги" Value="Детски книги"></asp:TreeNode>
                                        <asp:TreeNode Text="Лектири" Value="Лектири"></asp:TreeNode>
                                        <asp:TreeNode Text="Живот" Value="Живот"></asp:TreeNode>
                                        <asp:TreeNode Text="Здравје" Value="Здравје"></asp:TreeNode>
                                        <asp:TreeNode Text="Поезија" Value="Поезија"></asp:TreeNode>
                                    </asp:TreeNode>
                                </Nodes>
                                <NodeStyle Font-Names="Verdana" Font-Size="Small" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                <ParentNodeStyle Font-Bold="True" Font-Size="Large" />
                                <RootNodeStyle Font-Bold="True" Font-Size="Medium" ForeColor="#003366" />
                                <SelectedNodeStyle Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="#006699" HorizontalPadding="0px" VerticalPadding="0px" />
                            </asp:TreeView>
                        </td>
                        <td class="auto-style36">&nbsp;</td>
                        <td class="auto-style9" colspan="3" rowspan="2">
                            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
                                <table class="auto-style1">
                                    <tr>
                                        <td colspan="3" style="background-color: #184363">
                                            <asp:Label ID="lblNaslov" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblAvtor" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" rowspan="4">
                                            <asp:Image ID="Image2" runat="server" Height="201px" Width="149px" />
                                        </td>
                                        <td class="auto-style6" style="font-family: Arial; font-size: medium; font-weight: bold; color: #003366;">Оригинален насллов: </td>
                                        <td>
                                            <asp:Label ID="lblOriginalen" runat="server" Font-Names="Arial" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" style="font-family: Arial; font-size: medium; font-weight: bold; color: #003366;">ISBN: </td>
                                        <td>
                                            <asp:Label ID="lblISBN" runat="server" Font-Names="Arial" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" style="font-family: Arial; font-size: medium; font-weight: bold; color: #003366;">Година на издавање:</td>
                                        <td>
                                            <asp:Label ID="lblGodina" runat="server" Font-Names="Arial" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" style="font-family: Arial; font-size: medium; font-weight: bold; color: #003366;">Цена: </td>
                                        <td>
                                            <asp:Label ID="lblCena" runat="server" Font-Names="Arial" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" rowspan="3">&nbsp;</td>
                                        <td class="auto-style6" style="font-family: Arial; font-size: medium; font-weight: bold; color: #003366;">Издавачка куќа</td>
                                        <td>
                                            <asp:Label ID="lblKukja" runat="server" Font-Names="Arial" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">
                                            <asp:ImageButton ID="Button7" runat="server" AlternateText="Додади во количка" Height="32px" ImageUrl="~/Images/add-button.png" OnClick="Button7_Click" Width="33px" />
                                            <br />
                                        </td>
                                        <td class="auto-style7">
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7" colspan="2">
                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="#003366" Text="Краток опис"></asp:Label>
                                            <br />
                                            <br />
                                            <asp:Label ID="lblOpis" runat="server" Font-Names="Arial" Text="Label"></asp:Label>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style39" style="background-image: url('Images/book_PNG2117.png'); background-repeat: no-repeat; background-position: right -120px; background-attachment: inherit;"></td>
                        <td class="auto-style37" rowspan="2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style10"></td>
                        <td class="auto-style40" colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="background-color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    
     <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />

        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
