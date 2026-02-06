<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_home.aspx.cs" Inherits="PRJ.user_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/userhome.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 130px;
            width: 200px;
            position: absolute;
            margin-left: 325px;
            margin-top: 435px;
            border-radius: 20px;
            box-shadow: 2px 3px 5px #17091f;
            left: 9px;
            top: 84px;
        }
    </style>
</head>
<body>
    <a id="top"></a>
    <form id="form1" runat="server">
        <div class="nav_panel">
            <asp:Image ImageUrl="~/images/LOGO.png" runat="server" CssClass="logo" />
            <asp:Label CssClass="insurance_products" ID="Label1" runat="server" Text="Insurance Products"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" EnableTheming="True" Width="18px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="life_insurance.aspx">Life Insurance</asp:ListItem>
                <asp:ListItem Value="health_insurance.aspx">Health Insurance</asp:ListItem>
                <asp:ListItem>Vehicle Insurance</asp:ListItem>
            </asp:DropDownList>

            <asp:Label CssClass="renew_policy" ID="Label2" runat="server" Text="Renew Your Policy"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="19px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem Value="Info_page.aspx">Term Life Insurance Renewal</asp:ListItem>
                <asp:ListItem Value="Info_page.aspx">Health Insurance Renewal</asp:ListItem>
                <asp:ListItem>Vehicle Insurance Renewal</asp:ListItem>
            </asp:DropDownList>

            <asp:Label CssClass="claim" ID="Label3" runat="server" Text="Claim"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" Width="19px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>File New Claim</asp:ListItem>
                <asp:ListItem>What is a claim?</asp:ListItem>
                <asp:ListItem>Know more about filing a claim</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="Button4" CssClass="about_us" runat="server" Text="About Us" OnClick="Button4_Click" />

            <asp:Image CssClass="my_acc" ImageUrl="~/images/my_acc.png" runat="server" />
            <asp:Button CssClass="account_btn" ID="Button1" runat="server" Text="My Account" OnClick="Button1_Click" />

        </div>

        <div class="second">
            <asp:Label CssClass="title_1" ID="Label5" runat="server" Text="Welcome to ClaimEase!"></asp:Label>
            <asp:Label CssClass="title_2" ID="Label6" runat="server" Text="Your Trusted Partner in Simplifying Insurance Claims"></asp:Label>
            <asp:AdRotator CssClass="ad_rotator" ID="AdRotator1" runat="server" AdvertisementFile="~/ads_user_home.xml" />

            <asp:ImageButton CssClass="car_insurance_img" ID="ImageButton1" runat="server" ImageUrl="~/images/small_car_insurance.jpg" Height="120px" Width="200px" />
            <asp:ImageButton CssClass="life_insurance_img" PostBackUrl="~/aspx/life_insurance.aspx" ID="ImageButton2" runat="server" ImageUrl="~/images/small_life_insurance.jpg" Height="120px" Width="200px" />
            <asp:ImageButton CssClass="auto-style1" ID="ImageButton3" runat="server" ImageUrl="~/images/small_health_insurance.jpg" Height="120px" Width="200px" PostBackUrl="~/aspx/health_insurance.aspx" />
            <asp:Label CssClass="below_ad_content" ID="Label7" runat="server">Secure Today, Confident Tomorrow.</asp:Label>
            <asp:Label CssClass="below_ad_content_2" ID="Label8" runat="server" Text="Label">Protect your valuables in minutes!</asp:Label>

            <asp:BulletedList ID="HorizontalList" runat="server" DisplayMode="Text">
                <asp:ListItem>One-Shot Insurance Platform</asp:ListItem>
                <asp:ListItem>Affordable Plans</asp:ListItem>
                <asp:ListItem>100% Digital</asp:ListItem>
                <asp:ListItem>24/7 Active</asp:ListItem>
                <asp:ListItem>Hassle-free Claim Support</asp:ListItem>
            </asp:BulletedList>
            
        </div>
        <div class="third">
            <asp:Label CssClass="ce_offers" ID="Label9" runat="server" Text="ClaimEase Offers!"></asp:Label>
            <asp:Label CssClass="third_content" ID="Label10" runat="server">File a Claim: Submit your claim quickly and easily.<p>Claim: Check the status of your claim in real-time.</p>FAQs: Find answers to common questions about claims and coverage.<p></p>Support: 24/7 support provided.</asp:Label>
            <div class="img_1">
                <asp:Image ID="Image1" CssClass="home_img1" ImageUrl="~/images/home_img1.jpg" runat="server" /><br />
                <asp:Label ID="Label11" CssClass="home_img1_label" runat="server" Text="Best Prices Guaranteed"></asp:Label>
            </div>
            <div class="img_2">
                <asp:Image ID="Image2" CssClass="home_img1" ImageUrl="~/images/home_img2.jpg" runat="server" /><br />
                <asp:Label ID="Label12" CssClass="home_img2_label" runat="server" Text="Unbiased advice"></asp:Label>
            </div>
            <div class="img_3">
                <asp:Image ID="Image3" CssClass="home_img1" ImageUrl="~/images/home_img3.jpg" runat="server" /><br />
                <asp:Label ID="Label13" CssClass="home_img3_label" runat="server" Text="100% Reliable"></asp:Label>
            </div>
            <div class="img_4">
                <asp:Image ID="Image4" CssClass="home_img4" ImageUrl="~/images/home_img4.jpg" runat="server" /><br />
                <asp:Label ID="Label14" CssClass="home_img4_label" runat="server" Text="Customer Support"></asp:Label>
            </div>
            <div class="img_5">
                <asp:Image ID="Image5" CssClass="home_img4" ImageUrl="~/images/home_img5.jpg" runat="server" /><br />
                <asp:Label ID="Label15" CssClass="home_img5_label" runat="server" Text="Happy to help"></asp:Label>
            </div>
            <a href="#top" class="btt">Back To Top</a>
        </div>
        <div class="footer">
            <asp:Label CssClass="footer_label" ID="Label16" runat="server" Text="&nbsp;Visitors are hereby informed that their information submitted on the website may be shared with insurers.Product information is authentic and solely based on the information received from the insurers.
                                Beware of spurious phone calls and fictitious / fraudulent offers.
                                &nbsp;IRDAI or its officials do not involve in activities like selling insurance policies, announcing bonus or investment of premiums. Public receiving such phone calls are requested to lodge a police complaint.">
            </asp:Label>
            <asp:Image ImageUrl="~/images/LOGO.png" runat="server" CssClass="footer_logo" /><br />
            <asp:Image ID="Image6" ImageUrl="~/images/footer_img.png" CssClass="social" runat="server" />

        </div>

    </form>
</body>
</html>
