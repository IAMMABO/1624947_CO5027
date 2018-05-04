<%@ Page Title="HOMEPAGE" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bean.Default" %>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    HOMEPAGE
</asp:Content>
<asp:Content ID ="Content1" ContentPlaceHolderID="css" runat ="server">
    <!--CSS-->
    <link href="/beancss/defaultcss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet"/>
    </asp:Content>


<asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
    <!--NAVIGATION-->
<nav>
    <ul>
				<li><a class="active" href="Default.aspx" accesskey="h">HOME</a></li>
				<li><a href="Product.aspx" accesskey="p">PRODUCT</a></li>
				<li><a href="Login.aspx" accesskey="l">LOGIN</a></li>
                <li><a href="Contact.aspx" accesskey="c">CONTACT</a></li>
    </ul>
</nav>
</asp:content>

<asp:Content ID ="Content2" ContentPlaceHolderID="CPH1" runat ="server">
    <form id="form1" runat="server">
        <!--LIST OF PRODUCTS-->
        <h1>Bring it anywhere you go..</h1>
        <table><tr>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate></HeaderTemplate> 
        <ItemTemplate>
               <td><a href="<%#Eval("Prod_ID","Product.aspx?Prod_ID={0}")%>"><asp:Image ID="Prod_Image" AlternateText="image" style="width:250px; height:100px;" ImageUrl='<%#string.Format("Photos/{0}.jpg", Eval("Prod_ID")) %>' runat="server" /></a>
               <ul>
                   <li><asp:Label ID="Label1" runat="server" Text="Label">Product ID:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>"><%#Eval("Prod_ID")%></a></li>
                <li><asp:Label ID="Label5" runat="server" Text="Label">Product Name:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>"><%#Eval("Prod_Name")%></a></li>
               <li><asp:Label ID="Label3" runat="server" Text="Label">Product Price:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>">Bnd$<%#Eval("Prod_Price")%></a></li>
                <li><asp:Label ID="Label4" runat="server" Text="Label">Product Quantity:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>"><%#Eval("Prod_Quantity")%></a></li>
                   </ul></td>
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>
             </tr></table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624947_beanbagConnectionString %>" SelectCommand="SELECT * FROM [tbl_products] WHERE ([Prod_Quantity] &gt;= @Prod_Quantity)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="Prod_Quantity" QueryStringField="Prod_Quantity" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
        <!--DESCRIPTION-->
  <h2> Details:</h2>
  <p>• It is made out of High grade PVC Leatherette Fabric.VC Leatherette Fabric.</p>
  <p>• It is filled with a High Density Polystyrene Beans.</p>
  <p>• Stitched with nylon threads which is strong and long lasting.</p>
  <p>• It has zippers and covered with velcro at its base,  so it is easy to clean or refilling beans into the bag.</p>
  <p>•  It is flexible and will ensure comfort for the user because it will adjust by itself depending on the user's body.</p>
  <p>• Easy to carry anywhere or wherever you go or when you need it.</p>
    </form>
</asp:Content>

