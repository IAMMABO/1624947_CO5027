﻿<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="uploadimages.aspx.cs" Inherits="bean.Admin.uploadimages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
         <link href="../beancss/uploadcss.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
        <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="index.aspx" accesskey="h">MENU</a></li>
				<li><a href="add.aspx" accesskey="p">ADD</a></li>
				<li><a href="edit.aspx" accesskey="l">EDIT</a></li>
                <li><a href="list.aspx" accesskey="c">LIST</a></li>
				<li><a class="active" href="uploadimages.aspx" accesskey="a">UPLOAD</a></li>
    
</ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH1" runat="server">
     <form id="form1" runat="server">
         <section>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </section>
             </form>
</asp:Content>