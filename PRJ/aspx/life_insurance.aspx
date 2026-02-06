<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="life_insurance.aspx.cs" Inherits="PRJ.aspx.life_insurance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ClaimEase</title>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script type="text/javascript">
        function payNow() {
            var options = {
                "key": "<%= RazorpayKey %>", // Key ID from code-behind
                "amount": "650000", // 6500 INR in paise
                "currency": "INR",
                "name": "ClaimEase Insurance",
                "description": "ClaimEase Insurance Premium",
                "handler": function (response) {
                    alert("Thank you!\nYour payment has been successfully received.\nWe appreciate your continued trust in our insurance services.");
                    document.getElementById('<%= hdnPaymentStatus.ClientID %>').value = "success";
                },
                "prefill": {
                    "name": "John Doe",
                    "email": "john@example.com",
                    "contact": "9999999999"
                },
                "theme": {
                    "color": "#3399cc"
                }
            };
            var rzp = new Razorpay(options);
            rzp.open();
        }
    </script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/lifeinsurance.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [term_life_insurance_details]"></asp:SqlDataSource>
        <asp:Image ID="Image1" CssClass="family" ImageUrl="~/images/family.jpg" runat="server" />
        <asp:Label ID="Label1" CssClass="lbl1" runat="server" Text="Term life insurance that <br> welcomes change!"></asp:Label>
        <asp:Image ImageUrl="~/images/LOGO.png" CssClass="logo" runat="server" />
        <div class="container form mt-2">
        <h2 class="mb-4">Let's build your perfect coverage</h2>

        <asp:Panel ID="formPanel" runat="server">
            <div class="mb-3">
                <label class="form-label">Your Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="e.g. Varun" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="mb-3">
                <label class="form-label">Your Gender</label><br />
                <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text=" Male" Checked="true" />
                <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text=" Female" />
            </div>

            <div class="mb-3">
                <label class="form-label">Have you smoked in the past 12 months?</label><br />
                <asp:RadioButton ID="rbSmokerYes" runat="server" GroupName="Smoker" Text=" Yes" />
                <asp:RadioButton ID="rbSmokerNo" runat="server" GroupName="Smoker" Text=" No" Checked="true" />
            </div>

            <div class="mb-3">
                <label class="form-label">Your Age</label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="e.g. 25"  MaxLength="2" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAge" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 18 - 65" ForeColor="Red" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
            </div>

            <div class="mb-3">
                <label class="form-label">Your Pin Code</label>
                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" placeholder="e.g. 560078"  MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPinCode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPinCode" ErrorMessage="Invalid Postal Code" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </div>

            <div class="mb-3">
                <label class="form-label">Your Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="e.g. 9000090000"  TextMode="Phone" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-12">
                <p>CLAIMEASE Life Flexi Term Plan&nbsp;&nbsp;&nbsp;₹7,700/-</p>
                <p>'LIFE1500' applied ₹6,200/yr + GST</p>
            </div>
            <br />
            
            <!-- PAY BUTTON -->
            
            <asp:Button ID="btnPay" runat="server" CssClass="btn btn-success" Text="Pay for Insurance" OnClientClick="payNow(); return false;" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" Text="SUBMIT" OnClick="btnSubmit_Click"/><br />
            <asp:Button ID="Button1" runat="server" Text="Return Home" CausesValidation="False" OnClick="Button1_Click"/><br />
            <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
            <br />
            <asp:HiddenField ID="hdnPaymentStatus" runat="server" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
