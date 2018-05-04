<%@ Page Title="PRODUCT" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="bean.Product" %>
<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    PRODUCT
</asp:Content>
<asp:Content ID ="Content2" ContentPlaceHolderID="css" runat ="server">
    <!--CSS-->
    <link href="/beancss/productcss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet"/>
     <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet"/>
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
        <!--PRODUCT DETAILS-->
    <h1>Choose your bean bag!</h1>
       
        <asp:Image ID="Prod_Image" CssClass="productimage" runat="server" AlternateText="Product Image" style="width:250px; height:150px;" />
        
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            <table>
                <tr>
                    <td> Prod_ID:
            <asp:Label ID="Prod_IDLabel1" runat="server" Text='<%# Eval("Prod_ID") %>' /></td>
                </tr>
            <tr>
                <td> Prod_Name:
            <asp:TextBox ID="Prod_NameTextBox" runat="server" Text='<%# Bind("Prod_Name") %>' /></td>
            </tr>
                <tr>
                    <td> Prod_Price:
            <asp:TextBox ID="Prod_PriceTextBox" runat="server" Text='<%# Bind("Prod_Price") %>' /></td>
                </tr>
                <tr>
                    <td>  Prod_Quantity:
            <asp:TextBox ID="Prod_QuantityTextBox" runat="server" Text='<%# Bind("Prod_Quantity") %>' /></td>
                </tr>
           </table>
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        
        <InsertItemTemplate>
            <table>
                <tr>
                    <td> Prod_ID:
            <asp:TextBox ID="Prod_IDTextBox" runat="server" Text='<%# Bind("Prod_ID") %>' /></td>
                </tr>
                <tr>
                    <td> Prod_Name:
            <asp:TextBox ID="Prod_NameTextBox" runat="server" Text='<%# Bind("Prod_Name") %>' /></td>
                </tr>
                <tr>
                    <td> Prod_Price:
            <asp:TextBox ID="Prod_PriceTextBox" runat="server" Text='<%# Bind("Prod_Price") %>' /></td>
                </tr>
                <tr>
                    <td>Prod_Quantity:
            <asp:TextBox ID="Prod_QuantityTextBox" runat="server" Text='<%# Bind("Prod_Quantity") %>' /></td>
                </tr>
            </table>  
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
                
        
        <ItemTemplate>
            <table>
                <tr>
                    <td> Prod_ID:
            <asp:Label ID="Prod_IDLabel" runat="server" Text='<%# Eval("Prod_ID") %>' /></td>
                </tr>
                <tr>
                    <td> Prod_Name:
            <asp:Label ID="Prod_NameLabel" runat="server" Text='<%# Bind("Prod_Name") %>' /></td>
                </tr>
                <tr>
                    <td> Prod_Price:
            <asp:Label ID="Prod_PriceLabel" runat="server" Text='<%# Bind("Prod_Price") %>' /></td>
                </tr>
                <tr>
                    <td>Prod_Quantity:
            <asp:Label ID="Prod_QuantityLabel" runat="server" Text='<%# Bind("Prod_Quantity") %>' /></td>
                </tr>
            </table>           
        </ItemTemplate>
    </asp:FormView>
          
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624947_beanbagConnectionString %>" SelectCommand="SELECT * FROM [tbl_products] WHERE ([Prod_ID] = @Prod_ID)" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:QueryStringParameter Name="Prod_ID" QueryStringField="Prod_ID" Type="Int32" />
            </SelectParameters>
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
        <asp:Button ID="btnPurchase" CssClass="buy" runat="server" Text="Buy Now" OnClick="btnPurchase_Click" /></td>
            </tr>
        </table>
    </form>
    </asp:content>
