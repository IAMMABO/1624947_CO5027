<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="bean.Admin.index" %>
<asp:Content ID ="Content1" ContentPlaceHolderID="css" runat ="server">
    <!--CSS-->
    <link href="../beancss/indexcss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
    </asp:Content>
<asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
    <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a class="active"href="index.aspx" accesskey="h">HOME</a></li>
				<li><a href="add.aspx" accesskey="p">ADD</a></li>
				<li><a href="edit.aspx" accesskey="l">EDIT</a></li>
                <li><a href="list.aspx" accesskey="c">LIST</a></li>
				<li><a href="uploadimages.aspx" accesskey="a">UPLOAD</a></li>
    
</ul>
    </nav>
    </asp:content>
<asp:Content ID ="Content2" ContentPlaceHolderID="CPH1" runat ="server">
    <h1>Welcome Admin, to the menu!</h1>
    </asp:Content>
