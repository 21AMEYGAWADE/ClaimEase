<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="claim_page.aspx.cs" Inherits="PRJ.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/claimpage.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            width: 150px;
            height: 30px;
            margin-left: 80px;
            margin-top: 373px;
            box-shadow: 2px 3px 5px #17091f;
            border-radius: 10px;
            right: 537px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [claim_details]"></asp:SqlDataSource>
        <div class="navpanel">
            <asp:Label ID="Label1" runat="server" Text="Claim Application" CssClass="label"></asp:Label>
            <asp:Image ID="Image1" runat="server" CssClass="logo" ImageUrl="~/images/LOGO.png"/>
            <asp:Image ID="Image2" runat="server" CssClass="img_1" ImageUrl="~/images/claimm.png" />
            <asp:Label ID="Label2" runat="server" CssClass="type_label" Text="Select Type of Claim:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="type_of_claim" >
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Property Damage</asp:ListItem>
                <asp:ListItem>Robbery</asp:ListItem>
                <asp:ListItem>Accidental Claim</asp:ListItem>
                <asp:ListItem>Health Claim</asp:ListItem>
                <asp:ListItem>Injury Claim</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator CssClass="req_ddl" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label3" CssClass="uid_label" runat="server" Text="User ID:"></asp:Label>
            <asp:TextBox ID="TextBox1" CssClass="uid" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" CssClass="f_name_label" Text="First Name:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="req_fname" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label5" CssClass="l_name_label" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="TextBox3" CssClass="l_name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="req_lname" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label CssClass="claim_amt_label" ID="Label6" runat="server" Text="Claim Amount:"></asp:Label>
            <asp:TextBox CssClass="claim_amt" ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="req_amt" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label7" CssClass="remark_label" runat="server" Text="Remark:"></asp:Label>
            <asp:TextBox CssClass="remark" ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Label ID="Label8" CssClass="date_label" runat="server" Text="Date:"></asp:Label>
            <asp:TextBox ID="TextBox6" CssClass="date" runat="server" TextMode="Date"></asp:TextBox>

            <asp:Button ID="Button1" CssClass="submitbtn" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            <div class="footer">
                <asp:Label CssClass="footer_label" ID="Label16" runat="server" Text="Visitors are hereby informed that their information submitted on the website may be shared with insurers.Product information is authentic and solely based on the information received from the insurers. Beware of spurious calls and fraudulent offers.">
                </asp:Label>
                <asp:Image ImageUrl="~/images/LOGO.png" runat="server" CssClass="footer_logo" />
                <asp:Image ID="Image3" CssClass="social" ImageUrl="~/images/footer_img.png" runat="server" />            </div>
            
        </div>
    </form>
</body>
</html>
