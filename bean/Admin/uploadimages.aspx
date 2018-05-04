<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="uploadimages.aspx.cs" Inherits="bean.Admin.uploadimages" %>
<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    UPLOAD IMAGES
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
    <!--CSS-->
         <link href="../beancss/uploadcss.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
        <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="add.aspx" accesskey="p">ADD</a></li>
				<li><a href="edit.aspx" accesskey="l">EDIT</a></li>
                <li><a href="list.aspx" accesskey="c">LIST</a></li>
				<li><a class="active" href="uploadimages.aspx" accesskey="a">UPLOAD</a></li>
    
</ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH1" runat="server">
     <form id="form1" runat="server">
         <!--CONTENT TO UPLOAD IMAGE-->
         <section>
             <table>
                 <tr>
                     <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                 </tr>
                 <tr>
                     <td> <asp:Button ID="Button1" CssClass="Upload" runat="server" OnClick="Button1_Click" Text="UPLOAD" /></td>
                 </tr>
             </table> 
    </section>
         <asp:Button ID="Button2" CssClass="logout" runat="server" OnClick="Button2_Click" Text="LOGOUT"/>
             </form>
</asp:Content>
