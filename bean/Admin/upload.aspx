<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="bean.Admin.upload" %>
<asp:Content ID ="Content1" ContentPlaceHolderID="css" runat ="server">
    <link href="../beancss/uploadcss.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
    </asp:Content>
<asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
    <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="index.aspx" accesskey="h">MENU</a></li>
				<li><a href="add.aspx" accesskey="p">ADD</a></li>
				<li><a href="edit.aspx" accesskey="l">EDIT</a></li>
                <li><a href="list.aspx" accesskey="c">LIST</a></li>
				<li><a class="active" href="upload.aspx" accesskey="a">UPLOAD</a></li>
    
</ul>
    </nav>
    </asp:content>
<asp:Content ID ="Content2" ContentPlaceHolderID="CPH1" runat ="server">
        <h1>Upload Image Here</h1>
        <asp:FileUpload ID="ImagefileUpload1" runat="server" />
        <br />
        <asp:Button ID="btnUpload" runat="server" OnClick="Button1_Click" Text="Upload" />
        <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
        <br />
</asp:Content>
