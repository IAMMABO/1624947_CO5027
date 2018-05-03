<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="bean.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
    <!--CSS-->
    <link href="../beancss/contactcss.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet"/>
</asp:Content>

<asp:Content ID ="NAV" ContentPlaceHolderID="navigation" runat ="server">
    <!--NAVIGATION-->
   <nav>
    <ul>
				<li><a href="Default.aspx" accesskey="h">HOME</a></li>
				<li><a href="Product.aspx" accesskey="p">PRODUCT</a></li>
				<li><a href="Login.aspx" accesskey="l">LOGIN</a></li>
                <li><a class="active" href="Contact.aspx" accesskey="c">CONTACT</a></li>
    
</ul>
    </nav>
    </asp:content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="server">
    <form id="form1" runat="server">
        <!--CONTACT SECTION-->
        <section>
    <table>
        <tr>
            <th>CONTACT US!</th>
        </tr>
        <tr>
        <td><asp:Label ID="Label" runat="server" Text="Name:"></asp:Label></td>
        <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required!" ControlToValidate="txtname" Text="*" ForeColor="Orange"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label></td>
        <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Required!" ControlToValidate="txtemail" Text="*" ForeColor="Orange"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="Message:"></asp:label></td>
        <td><asp:TextBox ID="txtmessage" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Write a message please.." ControlToValidate="txtmessage" Text="*" ForeColor="Orange"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
        <td><asp:ValidationSummary ID="ValidationSummary1" HeaderText="Please fix the following errors" ForeColor="Red" runat="server" /></td>
        </tr>
        <tr>
        <td><asp:Label ID="labelmessage" runat="server"></asp:Label></td>
            </tr>
        </table>
            </section>
        <!--MAP-->
        <section>
        <table>
            <tr>
                 <th>WE ARE HERE!</th>
            </tr>
            <tr>
                <td><script>
                        var map;
                        function initMap() {
                            map = new google.maps.Map(document.getElementById("map"), {
                                center: { lat: 4.88588, lng: 114.93177, },
                                zoom: 18,
                            });
                                                       
                            var marker = new google.maps.Marker({
                                position: lat,
                                map:map
                            });
                        }
    </script>
    <script async defer src ="https://maps.googleapis.com/maps/api/js?key=AIzaSyCuOGYizf-FzKlI0gSc-Gwab6Z_3RfQs-c&callback=initMap" type="text/javascript"></script></td>
            </tr>

        </table>
            </section>
    </form>
</asp:Content>
