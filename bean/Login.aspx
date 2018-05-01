 <%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bean.Login" %>
<asp:Content ID ="Content1" ContentPlaceHolderID="CSS" runat ="server">
    <link href="../beancss/logincss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
    </asp:Content>

<asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
    <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="Default.aspx" accesskey="h">HOME</a></li>
				<li><a href="Product.aspx" accesskey="p">PRODUCT</a></li>
				<li><a class="active" href="Login.aspx" accesskey="l">LOGIN</a></li>
                <li><a href="Contact.aspx" accesskey="c">CONTACT</a></li>
    
</ul>
    </nav>
    </asp:content>

<asp:Content ID ="Content2" ContentPlaceHolderID="CPH1" runat ="server">
<form id="form1" runat="server">
<div id = "login">
<table>
<tr>
    <td><h1>LOGIN:</h1></td>
</tr>
<tr>
    <td><strong>Name:</strong></td>
</tr>
<tr>
    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
</tr>
<tr>
    <td><strong>Password:</strong></td>
</tr>
<tr>
    <td><asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
</tr>
<tr>
    <td><asp:Literal ID="LoginLiteral" runat="server"></asp:Literal></td>
</tr>
<tr>
    <td>&nbsp;<asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" /><asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="RESET" /></td>
</tr>
</table>
</div>

<div id = "register">
<table>
<tr>
    <td><h1>Register Here!</h1></td>
</tr>
<tr>
    <td><strong><asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label></strong></td>
</tr>
<tr>
    <td>&nbsp;<asp:TextBox ID="txtname2" runat="server"></asp:TextBox></td>
</tr>
<tr>    
    <td><asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="txtname2" Display="None" ErrorMessage="Name Required!" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator></td>
</tr>
<tr>
    <td><strong><asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label></strong></td>
</tr>
<tr>
    <td><asp:TextBox ID="txtpass2" runat="server"></asp:TextBox></td>
</tr>
<tr>
    <td>&nbsp;<asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="txtpass2" Display="None" ErrorMessage="Password Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
</tr>
<tr>
    <td>&nbsp;<strong><asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label></strong></td>
</tr>
<tr>
    <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
</tr>
<tr>
    <td>&nbsp;<asp:RegularExpressionValidator ID="emailchecker" runat="server" ControlToValidate="txtemail" Display="None" ErrorMessage="Email Required!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
<tr>
    <td>&nbsp;<asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click" Text="REGISTER" /><asp:Button ID="btnReset2" runat="server" OnClick="btnReset2_Click" Text="RESET" /></td><td>&nbsp;</td>
</tr>
<tr>
    <td>&nbsp;<asp:Literal ID="RegisterLiteral" runat="server"></asp:Literal></td>
</tr>
    </table>
</div>
    </form>
    </asp:Content>