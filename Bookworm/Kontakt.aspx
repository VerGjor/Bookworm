<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kontakt.aspx.cs" Inherits="Kontakt" %>

<!DOCTYPE html>

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
            width: 979px;
        }
        .auto-style4 {
            height: 92px;
            width: 679px;
        }
        .auto-style98 {
            width: 979px;
        }
        .auto-style105 {
            width: 2615px;
        }
        .auto-style100 {
            width: 679px;
        }
        .auto-style7 {
            height: 28px;
        }
        .auto-style38 {
            height: 24px;
        }
        .auto-style106 {
            height: 45px;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style108 {
            height: 92px;
            width: 394px;
        }
        .auto-style109 {
            height: 92px;
        }
        .auto-style112 {
            font-size: medium;
            background-color: #FFFFFF;
        }
        .auto-style114 {
            color: rgb(0, 0, 0);
        }
        .auto-style115 {
            font-size: small;
            background-color: #FFFFFF;
        }
        .auto-style117 {
            width: 513px;
            height: 262px;
        }
        .auto-style118 {
            height: 51px;
        }
        .auto-style119 {
            width: 65%;
            height: 216px;
        }
        .auto-style121 {
            color: #003366;
            width: 145px;
        }
        .auto-style122 {
            font-size: medium;
            background-color: #FFFFFF;
            color: #003366;
        }
        .auto-style123 {
            font-size: small;
            background-color: #FFFFFF;
            color: #000000;
        }
        .auto-style126 {
            height: 20px;
        }
        .auto-style127 {
            width: 139px;
        }
        .auto-style129 {
            height: 133px;
        }
        .auto-style130 {
            width: 145px;
        }
        .auto-style132 {
            height: 51px;
            width: 979px;
        }
        .auto-style133 {
            height: 45px;
            font-size: x-large;
            color: #FFFFFF;
            width: 111px;
        }
        .auto-style134 {
            height: 51px;
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <table align="center" class="auto-style1" style="position: absolute; margin-top: 3px">
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" />
                    </td>
                    <td class="auto-style108">&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style109">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <td class="auto-style98" colspan="2">
                    </td>
                    <td class="auto-style105" colspan="2"> </td>
                    <td class="auto-style100">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                </tr>
                <tr>
                    <td class="auto-style106" style="background-color: #003366; font-family: Arial;"><strong>&nbsp; Контакт</strong></td>
                    <td class="auto-style133">&nbsp;</td>
                    <td class="auto-style106" colspan="3" style="background-color: #003366; font-family: Arial;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style132" rowspan="2"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2964.9102727363415!2d21.407713815445007!3d42.00220117921257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1354144476f91b15%3A0xf5bec2bb1ca716eb!2sBranislav+Nushikj+9%2C+Skopje+1000!5e0!3m2!1sen!2smk!4v1503955808415" frameborder="0" style="border:0" allowfullscreen id="I1" class="auto-style117" name="I1"></iframe>
                        <br />
                        <br />
                        <strong><span id="ctl00_ContentPlaceHolder1_lblA7" style="font-family: Arial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span class="auto-style122" style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                        Адреса:</span></span><span id="ctl00_ContentPlaceHolder1_lblA5" class="auto-style114" style="padding: 0px; margin-left: 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span class="auto-style112" style="color: rgb(38, 38, 38); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                        </span>
                        </span> </strong>
                        <span id="ctl00_ContentPlaceHolder1_lblA6" class="auto-style114" style="padding: 0px; margin-left: 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="auto-style115" style="color: rgb(38, 38, 38); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Банислав Нушиќ 9, 1000 Скопје, Македонија<br />
                        <br />
                        </span></span><strong>
                        <span class="auto-style122" style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Телефон за контакт: </span></strong><span class="auto-style123" style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">078/223-305</span><span class="auto-style115" style="color: rgb(38, 38, 38); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><br />
                        <br />
                        </span><strong><span class="auto-style122" style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"> Е-адреса:</span></strong><span class="auto-style115" style="color: rgb(38, 38, 38); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"> 
                        <a href="mailto:info@bookworm.mk">info@bookworm.mk</a><br />
                        <br />
                        <br />
                        <br />
                        </span></td>
                    <td class="auto-style134" rowspan="2">&nbsp;</td>
                    <td class="auto-style118" colspan="3"><span class="auto-style112" style="color: rgb(38, 38, 38); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Имате прашање или предлог за интернет страницата? 
                        <br />
&nbsp;Споделете го Вашето мислење со нас.<br />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style118" colspan="3">
                        <table class="auto-style119" style="background-color: #DFEAF4">
                            <tr>
                                <td class="auto-style121" style="font-family: Arial"><strong>Наслов*</strong></td>
                                <td class="auto-style127">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Внесете наслов"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style121" style="font-family: Arial"><strong>Вашата е-адреса*</strong></td>
                                <td class="auto-style127">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Внесете ја вашата е-адреса"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Неправилен формат" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style121" style="font-family: Arial"><strong>Порака*</strong></td>
                                <td class="auto-style127">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style129" colspan="2">
                                    <asp:TextBox ID="TextBox3" runat="server" Height="105px" TextMode="MultiLine" Width="256px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Внесете порака"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style130">&nbsp;</td>
                                <td class="auto-style127">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Испрати" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="#CC3300" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" style="background-color: #000000">&nbsp;</td>
                </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
