<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Plakjanje.aspx.cs" Inherits="Plakjanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 124%;
            height: 231px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 229px;
        }
        .auto-style4 {
            height: 23px;
            width: 229px;
        }
        .auto-style5 {
            height: 23px;
            width: 230px;
        }
        .auto-style6 {
            width: 230px;
        }
        .auto-style7 {
            width: 229px;
            height: 26px;
        }
        .auto-style8 {
            width: 230px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style11 {
            width: 165px;
            height: 53px;
        }
        .auto-style16 {
            width: 715px;
            height: 53px;
        }
        .auto-style19 {
            width: 165px;
            height: 6px;
        }
        .auto-style21 {
            width: 715px;
            height: 6px;
            font-size: medium;
            color: #003366;
        }
        .auto-style20 {
            height: 6px;
        }
        .auto-style28 {
            width: 762px;
        }
        .auto-style25 {
            color: #003366;
        }
        .auto-style26 {
            font-size: x-small;
        }
        .auto-style23 {
            height: 57px;
            width: 396px;
        }
        .auto-style27 {
            width: 396px;
        }
        .auto-style22 {
            height: 137px;
            width: 396px;
        }
        .auto-style32 {
            width: 1319px;
            height: 614px;
        }
        .auto-style34 {
            width: 350px;
            height: 6px;
        }
        .auto-style35 {
            width: 350px;
            height: 53px;
        }
        .auto-style36 {
            height: 53px;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
    <div>
                <table class="auto-style32">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/logo.png" />
                        </td>
                        <td class="auto-style35"></td>
                        <td class="auto-style16" colspan="2"></td>
                        <td class="auto-style36">
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
                        <td class="auto-style34"></td>
                        <td class="auto-style21" colspan="2" style="font-family: Arial">
                            &nbsp;</td>
                        <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28" colspan="3" rowspan="3" style="background-image: url('Images/book_PNG2117.png'); background-repeat: no-repeat; background-attachment: scroll; background-position: right top">
                            <span class="auto-style25"><strong><span class="auto-style26">
                            <br />
                            </span></strong></span>
                           
                        </td>
                        <td class="auto-style23">
                            <strong style="font-size: large; font-weight: bold; font-family: Arial"><span class="auto-style25">Пополнете ја следнава форма:</span></strong></td>
                        <td class="auto-style9" rowspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27" style="font-family: Arial; font-weight: bold">
        &nbsp;
                            <br />
&nbsp;
                            <br />
&nbsp;
                            
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Име</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Презиме</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="218px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Е-mail</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Width="218px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Мејлот не е валиден" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Број на платежна картичка</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="218px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Важност на платежна картичка</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">CVV/CVC</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="3" Width="60px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Грешка" ForeColor="Red" ValidationExpression="^\d\d\d$" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="Плати" Width="181px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            </td>
                    </tr>
                    <tr>
                        <td colspan="5" style="background-color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
