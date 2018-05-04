<%@ Page Title="ADD" Language="C#" MasterPageFile="~/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="bean.Admin.add" %>
<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    ADD
</asp:Content>
<asp:Content ID ="Content1" ContentPlaceHolderID="css" runat ="server">
    <!--CSS-->
    <link href="../beancss/addcss.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
      <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet"/>
    </asp:Content>        
<asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
    <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a class="active" href="add.aspx" accesskey="p">ADD</a></li>
				<li><a href="edit.aspx" accesskey="l">EDIT</a></li>
                <li><a href="list.aspx" accesskey="c">LIST</a></li>
				<li><a href="uploadimages.aspx" accesskey="a">UPLOAD</a></li>
    
</ul>
    </nav>
    </asp:content>
        <asp:Content ID ="Content2" ContentPlaceHolderID="CPH1" runat ="server">
            <form id ="form1" runat="server">
                <!--CONTENT TO ADD PRODUCT-->
            <h1>Add Product Here</h1>
            <asp:FormView ID="FormView1" runat="server" Height="104px" OnPageIndexChanging="FormView1_PageIndexChanging" Width="470px" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource" DefaultMode="Insert">
                <EditItemTemplate>
                    <table>
                        <tr>
                            <td>Prod_ID:
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
                            <td> Prod_Quantity:
                                <asp:TextBox ID="Prod_QuantityTextBox" runat="server" Text='<%# Bind("Prod_Quantity") %>' /></td>
                        </tr>
                        <tr>
                            <td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                        </tr>
                    </table>
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
                    <td>  Prod_Price:
                    <asp:TextBox ID="Prod_PriceTextBox" runat="server" Text='<%# Bind("Prod_Price") %>' /></td>
                </tr>
                  <tr>
                      <td> Prod_Quantity:
                    <asp:TextBox ID="Prod_QuantityTextBox" runat="server" Text='<%# Bind("Prod_Quantity") %>' /></td>
                  </tr>
                   <tr>
                       <td> <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                   </tr>                 
                </InsertItemTemplate>
                <ItemTemplate>
                    Prod_ID:
                    <asp:Label ID="Prod_IDLabel" runat="server" Text='<%# Eval("Prod_ID") %>' />
                    <br />
                    Prod_Name:
                    <asp:Label ID="Prod_NameLabel" runat="server" Text='<%# Bind("Prod_Name") %>' />
                    <br />
                    Prod_Price:
                    <asp:Label ID="Prod_PriceLabel" runat="server" Text='<%# Bind("Prod_Price") %>' />
                    <br />
                    Prod_Quantity: <asp:Label ID="Prod_QuantityLabel" runat="server" Text='<%# Bind("Prod_Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:AdRotator ID="AdRotator1" runat="server" OnAdCreated="AdRotator1_AdCreated" />
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624947_beanbagConnectionString %>" SelectCommand="SELECT * FROM [tbl_products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tbl_products] WHERE [Prod_ID] = @original_Prod_ID AND [Prod_Name] = @original_Prod_Name AND [Prod_Price] = @original_Prod_Price AND (([Prod_Quantity] = @original_Prod_Quantity) OR ([Prod_Quantity] IS NULL AND @original_Prod_Quantity IS NULL))" InsertCommand="INSERT INTO [tbl_products] ([Prod_ID], [Prod_Name], [Prod_Price], [Prod_Quantity]) VALUES (@Prod_ID, @Prod_Name, @Prod_Price, @Prod_Quantity)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tbl_products] SET [Prod_Name] = @Prod_Name, [Prod_Price] = @Prod_Price, [Prod_Quantity] = @Prod_Quantity WHERE [Prod_ID] = @original_Prod_ID AND [Prod_Name] = @original_Prod_Name AND [Prod_Price] = @original_Prod_Price AND (([Prod_Quantity] = @original_Prod_Quantity) OR ([Prod_Quantity] IS NULL AND @original_Prod_Quantity IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Prod_ID" Type="Int32" />
                    <asp:Parameter Name="original_Prod_Name" Type="String" />
                    <asp:Parameter Name="original_Prod_Price" Type="Double" />
                    <asp:Parameter Name="original_Prod_Quantity" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Prod_ID" Type="Int32" />
                    <asp:Parameter Name="Prod_Name" Type="String" />
                    <asp:Parameter Name="Prod_Price" Type="Double" />
                    <asp:Parameter Name="Prod_Quantity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Prod_Name" Type="String" />
                    <asp:Parameter Name="Prod_Price" Type="Double" />
                    <asp:Parameter Name="Prod_Quantity" Type="Int32" />
                    <asp:Parameter Name="original_Prod_ID" Type="Int32" />
                    <asp:Parameter Name="original_Prod_Name" Type="String" />
                    <asp:Parameter Name="original_Prod_Price" Type="Double" />
                    <asp:Parameter Name="original_Prod_Quantity" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                <asp:Button ID="Button1" CssClass="logout" runat="server" OnClick="Button1_Click" Text="LOGOUT"/>
                </form> 
            </asp:Content>
            
