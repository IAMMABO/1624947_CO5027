﻿<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="bean.Product" %>
<asp:Content ID ="Content2" ContentPlaceHolderID="css" runat ="server">
    <link href="../beancss/productcss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower|Permanent+Marker" rel="stylesheet"/>
    </asp:Content>

 <asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
     <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="Default.aspx" accesskey="h">HOME</a></li>
				<li><a class="active" href="Product.aspx" accesskey="p">PRODUCT</a></li>
				<li><a href="Login.aspx" accesskey="l">LOGIN</a></li>
                <li><a href="Contact.aspx" accesskey="c">CONTACT</a></li>
    
</ul>
    </nav>
    </asp:content>

<asp:Content ID ="Content1" ContentPlaceHolderID="CPH1" runat ="server">
    <form id="form1" runat="server">
    <h1>Choose your bean bag!</h1>
        <asp:Image ID="Prod_Image" runat="server" style="width:250px; height:150px;" />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Prod_ID:
            <asp:Label ID="Prod_IDLabel1" runat="server" Text='<%# Eval("Prod_ID") %>' />
            <br />
            Prod_Name:
            <asp:TextBox ID="Prod_NameTextBox" runat="server" Text='<%# Bind("Prod_Name") %>' />
            <br />
            Prod_Price:
            <asp:TextBox ID="Prod_PriceTextBox" runat="server" Text='<%# Bind("Prod_Price") %>' />
            <br />
            Prod_Quantity:
            <asp:TextBox ID="Prod_QuantityTextBox" runat="server" Text='<%# Bind("Prod_Quantity") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Prod_ID:
            <asp:TextBox ID="Prod_IDTextBox" runat="server" Text='<%# Bind("Prod_ID") %>' />
            <br />
            Prod_Name:
            <asp:TextBox ID="Prod_NameTextBox" runat="server" Text='<%# Bind("Prod_Name") %>' />
            <br />
            Prod_Price:
            <asp:TextBox ID="Prod_PriceTextBox" runat="server" Text='<%# Bind("Prod_Price") %>' />
            <br />
            Prod_Quantity:
            <asp:TextBox ID="Prod_QuantityTextBox" runat="server" Text='<%# Bind("Prod_Quantity") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td><img src="image/<%#Eval("Prod_ID")%>.jpg" width="200" height="200" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Label">Product ID:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>"><%#Eval("Prod_ID")%></a></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Label">Product Name:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>"><%#Eval("Prod_Name")%></a></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Label">Product Price:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>">Bnd$<%#Eval("Prod_Price")%></a></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Label">Product Quantity:</asp:Label> <a href="<%#Eval("Prod_ID","Product.aspx?Id={0}")%>"><%#Eval("Prod_Quantity")%></a></td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624947_beanbagConnectionString %>" SelectCommand="SELECT * FROM [tbl_products]">
        </asp:SqlDataSource>
        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Color:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Selected="True">RED</asp:ListItem>
            <asp:ListItem>BLUE</asp:ListItem>
            <asp:ListItem>GREEN</asp:ListItem>
            <asp:ListItem>WHITE</asp:ListItem>
            <asp:ListItem>PURPLE</asp:ListItem>
            <asp:ListItem>BLACK</asp:ListItem>
            <asp:ListItem>CYAN</asp:ListItem>
            <asp:ListItem>PRINK</asp:ListItem>
        </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="btnPurchase" runat="server" Text="Buy Now" OnClick="btnPurchase_Click" /></td>
            </tr>
        </table>
    </form>
    </asp:content>
