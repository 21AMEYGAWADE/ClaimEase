<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="PRJ.aspx.myaccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/myaccount.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <div class="nav_panel">
            <asp:Image ImageUrl="~/images/LOGO.png" runat="server" CssClass="logo" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [registration_details]"></asp:SqlDataSource>
            <asp:Image CssClass="my_acc" ImageUrl="~/images/my_acc.png" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="HOME" OnClick="Button1_Click"/>
        </div>

        <div class="main">
            <h2>ACCOUNT DETAILS</h2>
            <div class="data1">
                <asp:Label ID="Label1" runat="server" Text="User Id:"></asp:Label>
                <asp:TextBox ID="TextBox1" ReadOnly="true" CssClass="tb" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="tb" runat="server" MaxLength="2" ></asp:TextBox>
            </div>
            <div class="data2">
                <asp:Label ID="Label5" runat="server" Text="First Name:"></asp:Label>
                <asp:TextBox ID="TextBox3" CssClass="tb" ReadOnly="true" runat="server"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" Text="Last Name:"></asp:Label>
                <asp:TextBox ID="TextBox4" CssClass="tb" runat="server" ></asp:TextBox>
            </div>
            <div class="data3">
                <asp:Label ID="Label9" runat="server" Text="Contact No.:"></asp:Label>
                <asp:TextBox ID="TextBox5" CssClass="tb" runat="server"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" Text="Gmail:"></asp:Label>
                <asp:TextBox ID="TextBox6" CssClass="tb"  runat="server"></asp:TextBox>
            </div>

            <!-- TO SHOW THE STATUS OF CLAIM -->
            <h2 class="cs">CLAIM STATUS</h2>
            <asp:Label ID="Label13" CssClass="status" runat="server" Text="STATUS"></asp:Label>
            <asp:Label ID="Label14" CssClass="extra" runat="server" Text="Your claim is approved!"></asp:Label>

            <br />
            <asp:Button ID="Button3" CssClass="logoutbtn" runat="server" Text="LOG OUT" OnClick="Button3_Click" />
        </div>

    </form>
    <asp:Label ID="amey" runat="server" ForeColor="Wheat" Text="Label"></asp:Label>
</body>
</html>
