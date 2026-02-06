<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_registration.aspx.cs" Inherits="PRJ.user_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/userregistrationn.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav-panel">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [registration_details]"></asp:SqlDataSource>
            <asp:Image ImageUrl="~/images/LOGO.png" runat="server" CssClass="logo" />
            <asp:Button ID="Button2" runat="server" Text="News" CssClass="news" />
            <asp:Button ID="Button3" runat="server" Text="Investing" CssClass="investing" />
            <asp:Button ID="Button4" runat="server" Text="About Us" CssClass="about_us" />
            <asp:Button ID="Button5" runat="server" Text="Claim" CssClass="claim" />
        </div>
        <div class="gg">
            <div class="left">
                <asp:Image ImageUrl="~/images/login_img.png" runat="server" CssClass="login_img" /><br />
                <asp:Label ID="Label1" runat="server" Text="USER REGISTRATION" CssClass="reg_label"></asp:Label><br />
                <asp:TextBox ID="TextBox4" CssClass="fname" ToolTip="First Name" Placeholder="First Name"  runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox1" CssClass="user_gmail" runat="server" ToolTip="GMAIL" Placeholder="Gmail" TextMode="Email"></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="TextBox2" CssClass="user_pass" runat="server" TextMode="Password" ToolTip="PASSWORD" Placeholder="Password"></asp:TextBox><br />
                <asp:TextBox ID="TextBox3" CssClass="confirm_pass" runat="server" ToolTip="Confirm Password" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Don't Match" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ForeColor="Red"></asp:CompareValidator>

                <asp:TextBox ID="TextBox5" CssClass="age_tb" Placeholder="age" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox6" CssClass="lastname_tb" Placeholder="Lastname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox7" CssClass="contact_tb" Placeholder="Contact number" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>

                <div class="checkbox-container">
                    <asp:CheckBox ID="RememberMeCheckBox" CssClass="reg_cb" Text="Remember me?" runat="server"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Forgot Password?</a>
                </div>
                <asp:Button ID="Button1" CssClass="reg_btn" runat="server" Text="REGISTER" OnClick="Button1_Click" />

            </div>
            <div class="right">
                <asp:Image CssClass="right_img" ImageUrl="~/images/right_img.jpg" runat="server" /><br />
                <br />
                <br />
                <asp:Label CssClass="right_text" Text="Inside your account you can:" runat="server" /><br />
                <br />
                <br />
                <br />
                <div class="right_panel">
                    <asp:Image ID="Image1" ImageUrl="~/images/claim.jpg" runat="server" />
                    <asp:Image ID="Image2" ImageUrl="~/images/pencil.jpg" runat="server" />
                    <asp:Image ID="Image3" ImageUrl="~/images/docs.jpg" runat="server" />
                </div>
                <div class="tip">
                    <asp:Label ID="Label2" runat="server" Text="File a claim"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Manage your policy"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="View policy docs"></asp:Label>
                </div>
                <asp:Label CssClass="terms" ID="Label5" runat="server" Text="By clicking on Sign up, I accept the&nbsp;&nbsp;"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="terms2">Terms & Conditions</asp:LinkButton>
                <asp:Image ImageUrl="~/images/LOGO.png" runat="server" CssClass="logo2" />
            </div>
        </div>
    </form>
</body>
</html>
