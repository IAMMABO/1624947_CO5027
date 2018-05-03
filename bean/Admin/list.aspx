<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="bean.Admin.list" %>
<asp:Content ID ="Content2" ContentPlaceHolderID="css" runat ="server">
    <!--CSS-->
    <link href="../beancss/listcss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
    </asp:Content>
<asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
    <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="index.aspx" accesskey="h">MENU</a></li>
				<li><a href="add.aspx" accesskey="p">ADD</a></li>
				<li><a href="edit.aspx" accesskey="l">EDIT</a></li>
                <li><a class="active" href="list.aspx" accesskey="c">LIST</a></li>
				<li><a href="uploadimages.aspx" accesskey="a">UPLOAD</a></li>
    
</ul>
    </nav>
    </asp:content>
<asp:Content ID ="Content1" ContentPlaceHolderID="CPH1" runat ="server">
    <form id ="form1" runat = "server">
        <!--LIST OF PRODUCTS-->
            <h1>List Product Here</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1" Width="540px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"/>
                <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" ReadOnly="True" SortExpression="Prod_ID" />
                <asp:BoundField DataField="Prod_Name" HeaderText="Prod_Name" SortExpression="Prod_Name" />
                <asp:BoundField DataField="Prod_Price" HeaderText="Prod_Price" SortExpression="Prod_Price" />
                <asp:BoundField DataField="Prod_Quantity" HeaderText="Prod_Quantity" SortExpression="Prod_Quantity" />
                <asp:HyperLinkField DataNavigateUrlFields="Prod_ID" DataNavigateUrlFormatString="uploadimages.aspx?Prod_ID={0}" Text="Upload Image" />
                <asp:HyperLinkField DataNavigateUrlFields="Prod_ID" DataNavigateUrlFormatString="uploadimages.aspx?Prod_ID={0}" Text="Edit Image" />
                 <asp:HyperLinkField DataNavigateUrlFields="Prod_ID" DataNavigateUrlFormatString="edit.aspx?Prod_ID={0}" Text="View Produc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624947_beanbagConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tbl_products] WHERE [Prod_ID] = @original_Prod_ID AND [Prod_Name] = @original_Prod_Name AND [Prod_Price] = @original_Prod_Price AND (([Prod_Quantity] = @original_Prod_Quantity) OR ([Prod_Quantity] IS NULL AND @original_Prod_Quantity IS NULL))" InsertCommand="INSERT INTO [tbl_products] ([Prod_ID], [Prod_Name], [Prod_Price], [Prod_Quantity]) VALUES (@Prod_ID, @Prod_Name, @Prod_Price, @Prod_Quantity)" UpdateCommand="UPDATE [tbl_products] SET [Prod_Name] = @Prod_Name, [Prod_Price] = @Prod_Price, [Prod_Quantity] = @Prod_Quantity WHERE [Prod_ID] = @original_Prod_ID AND [Prod_Name] = @original_Prod_Name AND [Prod_Price] = @original_Prod_Price AND (([Prod_Quantity] = @original_Prod_Quantity) OR ([Prod_Quantity] IS NULL AND @original_Prod_Quantity IS NULL))">
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
        </form>
   </asp:Content>
