<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about_us.aspx.cs" Inherits="PRJ.aspx.about_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/about_us.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="aboutus">
            <asp:Label ID="Label1" CssClass="title" runat="server" Text="About Us "></asp:Label>
            <asp:Image ID="Image3" CssClass="logo" runat="server" ImageUrl="~/images/LOGO.png" />
        </div>
        <div class="content">
            <asp:Label ID="Label2" CssClass="main" runat="server" Text="Welcome to ClaimEase<br>"></asp:Label>
            <asp:Label ID="Label3" CssClass="main1" runat="server" Text="Your trusted partner in simplifying the insurance claims process.

At ClaimEase, we understand how stressful and time-consuming dealing with insurance claims can be.That’s why we’ve developed a fast, secure, and fully online platform designed to make the entire process as simple and hassle-free as possible.<br />

Our mission is to empower individuals and businesses to file, track, and resolve claims with ease. With just a few clicks, you can submit your claim, monitor its progress in real-time, and receive support from our team of experts every step of the way.<br />"></asp:Label>
            <asp:Label ID="Label4" CssClass="main2" runat="server" Text="Why Choose ClaimEase?"></asp:Label>
            <asp:Label ID="Label5" CssClass="main3" runat="server" Text=">Efficiency at Its Best: "></asp:Label>
            <asp:Label ID="Label6" CssClass="main4" runat="server" Text="We leverage cutting-edge technology to streamline the claims process, ensuring quick resolutions.<br>"></asp:Label>
            <asp:Label ID="Label7" CssClass="main5" runat="server" Text=">User-Centric Design:"></asp:Label>
            <asp:Label ID="Label8" CssClass="main6" runat="server" Text="Our platform is designed with you in mind – intuitive, easy to navigate, and accessible anytime, anywhere.<br>"></asp:Label>
            <asp:Label ID="Label9" CssClass="main7" runat="server" Text=">Expert Support:"></asp:Label>
            <asp:Label ID="Label10" CssClass="main8" runat="server" Text="Our team of insurance professionals is always on hand to provide guidance and ensure you get the assistance you deserve.<br>"></asp:Label>
            <asp:Label ID="Label11" CssClass="main9" runat="server" Text=">Transparency and Trust:"></asp:Label>
            <asp:Label ID="Label12" CssClass="main10" runat="server" Text="We believe in keeping you informed at every stage, so there are no surprises or hidden complexities.<br>"></asp:Label>
            <asp:Label ID="Label13" CssClass="main11" runat="server" Text="Our Vision"></asp:Label>
            <asp:Label ID="Label14" CssClass="main12" runat="server" Text="To revolutionize the insurance claims process by providing a seamless, transparent, and user-friendly solution that empowers people to take control of their claims with confidence."></asp:Label>
            <asp:Label ID="Label15" CssClass="main13" runat="server" Text="Our Commitment"></asp:Label>
            <asp:Label ID="Label16" CssClass="main14" runat="server" Text="At ClaimEase, we are committed to innovation, integrity, and customer satisfaction. We continually refine our platform and services to meet the evolving needs of our users, ensuring that filing an insurance claim becomes a stress-free experience for everyone."></asp:Label>
            <asp:Label ID="Label17" CssClass="main15" runat="server" Text="Let’s Simplify Claims Together.Whether you're handling a personal claim or a business-related one, we’re here to ensure that the process is as smooth and efficient as possible.<br>Experience the ease with ClaimEase."></asp:Label>
            <asp:Image ID="Image1" CssClass="img1" runat="server" ImageUrl="~/images/tej_guidance.png"/>
            <asp:Image ID="Image2" CssClass="img2" runat="server" ImageUrl="~/images/tej_growth.jpg" />
        </div>
        <div class="footer">
            <asp:Label ID="Label18" CssClass="f1" runat="server" Text="Visitors are hereby informed that their information submitted on the website may be shared with insurers.Product information is authentic and solely based on the information received from the insurers.
                                Beware of spurious phone calls and fictitious / fraudulent offers.
                                &nbsp;IRDAI or its officials do not involve in activities like selling insurance policies, announcing bonus or investment of premiums. Public receiving such phone calls are requested to lodge a police complaint."></asp:Label>
            <asp:Image ID="Image4" CssClass="logo1" runat="server" ImageUrl="~/images/LOGO.png" />
        </div>
    </form>
</body>
</html>
