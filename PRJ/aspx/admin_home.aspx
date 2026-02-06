<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="PRJ.aspx.admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=3.0">
    <title>claimease</title>
    <link href="../css/adminhime.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            margin-left: 0px;
            left: 297px;
            top: 378px;
            width: 932px;
            height: 252px;
            margin-right: 0px;
            margin-top: 0px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="nav-panel">
            <asp:Label ID="Label1" runat="server" CssClass="claimease_title" Text="ClaimEase"></asp:Label>
            <asp:Image ID="Image1" CssClass="admin_img" ImageUrl="~/images/admin_logo.png" runat="server" />
            <asp:Button ID="Button1" runat="server" CssClass="nav_btn" Text="My Account" />
        </div>
        <div class="main">
            <asp:Image ID="Image3" CssClass="main_logo" ImageUrl="~/images/LOGO.png" runat="server" />
            <asp:Label ID="Label2" runat="server" CssClass="main_line" Text="A web-based claim processing system"></asp:Label>
            <asp:Image ID="Image2" CssClass="rc" ImageUrl="~/images/received_claims.png" runat="server" />
            <div id="circle"></div>
            <asp:Label ID="Label3" CssClass="received_claims" runat="server" Text="Received Claims"></asp:Label><br />
            <asp:GridView ID="GridView1" CssClass="auto-style1" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="5" BorderColor="Black" BorderStyle="Solid" BorderWidth="4px" CellPadding="4" CellSpacing="3" ForeColor="Black" OnRowCommand="GridView1_RowCommand" DataKeyNames="userid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="policynumber" HeaderText="policynumber" SortExpression="policynumber" />
                    <asp:BoundField DataField="typeofclaim" HeaderText="typeofclaim" SortExpression="typeofclaim" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:ButtonField ButtonType="Button" CommandName="show" Text="Show Details" />
                </Columns>
                <HeaderStyle BackColor="#660066" ForeColor="White" Wrap="True" />
                <SelectedRowStyle BackColor="#FF66FF" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [userid], [firstname], [policynumber], [typeofclaim], [amount] FROM [claim_status_details]"></asp:SqlDataSource>

            <asp:Button ID="Button2" CssClass="approvebtn" runat="server" Text="Approve" OnClick="Button2_Click" />
            <asp:Button ID="Button3" CssClass="rejectbtn" runat="server" Text="Reject" OnClick="Button3_Click" />
            <br />
            
            <div class="data">
                <asp:Label ID="Label4" CssClass="disp_label" runat="server" Text="USER ID:"></asp:Label>
                <asp:Label ID="Label5" CssClass="disp_label" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label6" CssClass="disp_label" runat="server" Text="FIRSTNAME:"></asp:Label>
                <asp:Label ID="Label7" CssClass="disp_label" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label8" CssClass="disp_label" runat="server" Text="POLICY NO.:"></asp:Label>
                <asp:Label ID="Label9" CssClass="disp_label" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label10" CssClass="disp_label" runat="server" Text="TYPE:"></asp:Label>
                <asp:Label ID="Label11" CssClass="disp_label" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label12" CssClass="disp_label" runat="server" Text="AMOUNT:"></asp:Label>
                <asp:Label ID="Label13" CssClass="disp_label" runat="server" Text=""></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
