<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bean.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="css" runat="server">
    <!--CSS-->
    <link href="../beancss/logincss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
     <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="Default.aspx" accesskey="h">HOME</a></li>
				<li><a href="Product.aspx" accesskey="p">PRODUCT</a></li>
				<li><a class="active" href="Login.aspx" accesskey="l">LOGIN</a></li>
                <li><a href="Contact.aspx" accesskey="c">CONTACT</a></li>
    
</ul>
    </nav>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPH1" runat="server">
    <form id="form1" runat="server">
        <!--REGISTER-->
        <table id ="register">
            <tr>
                <td><h1>Register Account</h1></td>
                </tr>
            <tr>

                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TxtRegUser" runat="server"></asp:TextBox></td>
            </tr>
       <tr>
           <td><asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
       </tr>
            <tr>
                <td><asp:TextBox ID="TxtRegPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
      <tr>
          <td><asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label></td>
      </tr>
      <tr>
          <td><asp:TextBox ID="TxtRegConfirmPass" runat="server" TextMode="Password"></asp:TextBox></td>
      </tr>
            <tr>
                <td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtRegConfirmPass" ControlToValidate="TxtRegPassword" ErrorMessage="*Password doesnt match!" ForeColor="Red"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td><asp:Button ID="BtnReg" CssClass="Register" runat="server" OnClick="BtnReg_Click" Text="REGISTER" Height="35px"/>
                    <asp:Button ID="btnReset" CssClass="Reset" runat="server" Text="RESET" OnClick="BtnReset_Click" Height="35px" />
                </td>
            </tr>
       <tr>
           <td>            <asp:Literal ID="LitRegMsg" runat="server"></asp:Literal>
</td>
       </tr>
            </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
       <!--LOGIN-->
        <table id ="login">
             <tr>
                <td><h1>LOGIN:</h1></td>
                </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                 <td><asp:Label ID="Label4" runat="server" Text="Username:"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TxtLoginUser" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                 <td><asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TxtLoginPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td><asp:Literal ID="LitLoginMsg" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td><strong><asp:Button ID="btnLogin" CssClass="Login" runat="server" Text="LOGIN" OnClick="BtnLogin_Click" /></strong>
                    <strong><asp:Button ID="btnReset2" CssClass="Reset2" runat="server" Text="RESET" OnClick="BtnReset2_Click" /></strong>
                </td>
            </tr>           
        </table>
        </form>
</asp:Content>
