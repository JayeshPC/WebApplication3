<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Insert data in asp.net</title>

    <style type="text/css">

        .style1

        {

            color: #FF0066;

            text-decoration: underline;

            font-weight: bold;

        }

    </style>


</head>
<body>
    <form id="form1" runat="server">
    <table align="center" bgcolor="#B7FFC9" cellpadding="4" cellspacing="2" style="border: 1px solid #999999; font-family: Century">

<tr><td class="style1" colspan="3" style="text-align: center; background-color: #FEEEDE">Registration Form</td></tr>

<tr><td width="100px">Roll No.</td>

<td width="5px" rowspan="8" style="border-right-style: solid; border-right-width: 1px; border-right-color: #999999"></td>

<td width="200px"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>

<tr><td>Name</td>

<td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>

<tr>

<td>Class</td>

<td><asp:DropDownList ID="DropDownList1" runat="server">

<asp:ListItem>BCA</asp:ListItem>

<asp:ListItem>BBA</asp:ListItem>

<asp:ListItem>B.Tech</asp:ListItem>

<asp:ListItem>MCA</asp:ListItem>

<asp:ListItem>MBA</asp:ListItem>

<asp:ListItem>M.Tech</asp:ListItem>

</asp:DropDownList></td></tr>

<tr><td>Sex</td>

<td><asp:RadioButton ID="rbnMale" runat="server" Text="Male" Checked="True" GroupName="Sex" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbnFemale" runat="server" Text="Female" GroupName="Sex" /></td></tr>

<tr><td>E-mail</td>

<td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>

<tr><td>&nbsp;</td>

<td><asp:Literal ID="Literal1" runat="server"></asp:Literal></td></tr>

<tr><td></td>

<td><asp:Button ID="btnSave" runat="server" Text="Insert" onclick="btnSave_Click" />&nbsp;&nbsp;

<asp:Button ID="btnClear" runat="server" onclick="Button1_Click" Text="Clear" />

</td></tr>
</table>

    </form>
</body>
</html>
