<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="health_insurance.aspx.cs" Inherits="PRJ.aspx.health_insurance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/healthinsurance.css" rel="stylesheet" />
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script type="text/javascript">
    function payNow() {
        var options = {
            "key": "<%=RazorpayKey%>", // Key ID from code-behind
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
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" CssClass="hlth" ImageUrl="~/images/hlth.jpg" runat="server" />
        <asp:Image ID="Image2" CssClass="logo" ImageUrl="~/images/LOGO.png" runat="server" />
        <asp:Label ID="Label1" CssClass="lbl" runat="server" Text="Find top plans for you with<br> up to 25% discount!"></asp:Label>

        <div class="form2">
                <h3 class="text-center mb-4">Medical History</h3>
                <div class="mb-3">
                    <label class="form-label">Have you ever been diagnosed with or treated for any of the following conditions? (Check all that apply)</label>

                <div class="form-check">
                <asp:CheckBox ID="chkDiabetes" runat="server" CssClass="form-check-input" />
                <label class="form-check-label" for="chkDiabetes">Diabetes</label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="chkBloodPressure" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="chkBloodPressure">High Blood Pressure</label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="chkHeartDisease" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="chkHeartDisease">Heart Disease</label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="chkAsthma" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="chkAsthma">Asthma or Lung Disease</label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="chkCancer" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="chkCancer">Cancer</label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="chkMentalHealth" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="chkMentalHealth">Mental Health Disorders (Depression, Anxiety, Bipolar, etc.)</label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="chkAutoimmune" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="chkAutoimmune">Autoimmune Disorders (Lupus, Rheumatoid Arthritis, etc.)</label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="chkOther" runat="server" CssClass="form-check-input"/>
                    <label class="form-check-label" for="chkOther">None</label>
                </div>
            </div>

            <h3 class="text-center mb-4">Medications & Treatments</h3>
            <div class="mb-3">
                <label class="form-label">Are you currently taking any prescription medications?</label>
                <div class="form-radio">
                    <asp:RadioButton ID="rbMedYes" runat="server" GroupName="Medications" CssClass="form-check-input" Text="Yes"/>
                    <asp:RadioButton ID="rbMedNo" runat="server" GroupName="Medications" CssClass="form-check-input" Text="No" />
                </div>
                <div class="mt-2">
                    <label>If yes, list the medications:</label>
                    <asp:TextBox ID="txtMedications" runat="server" CssClass="form-control" Placeholder="Enter medication names"></asp:TextBox>
                </div>
            </div>

            <!-- Ongoing Treatments -->
            <div class="mb-3">
                <label class="form-label">Have you received any ongoing treatments or therapies (e.g., chemotherapy, dialysis, physiotherapy)?</label>
                <div class="form-radio">
                    <asp:RadioButton ID="rbTreatmentYes" runat="server" GroupName="Treatments" Text="Yes" CssClass="form-check-input" />
                    <asp:RadioButton ID="rbTreatmentNo" runat="server" GroupName="Treatments" Text="No" CssClass="form-check-input" />
                </div>
            </div>


        </div>

        <!-- RIGHT FORM -->
        <div class="container form mt-6">
        <h3 class="mb-3">Who would you like to insure?</h3>

        <asp:Panel ID="formPanel" runat="server">
            <div class="mb-3">
                <asp:RadioButton ID="rbSelf" runat="server" GroupName="InsuredPerson" Text=" Self" Checked="true" CssClass="me-3" />
                <asp:RadioButton ID="rbSpouse" runat="server" GroupName="InsuredPerson" Text=" Spouse" CssClass="me-3" />
                <asp:RadioButton ID="rbChild" runat="server" GroupName="InsuredPerson" Text=" Child" CssClass="me-3" />
                <asp:RadioButton ID="rbParent" runat="server" GroupName="InsuredPerson" Text=" Parent" CssClass="me-3" />
                <asp:RadioButton ID="rbParentInLaw" runat="server" GroupName="InsuredPerson" Text=" Parent In-Law" />
            </div>

            <div class="mb-3 mt-4">
                <label class="form-label">Please enter the age</label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Member age" MaxLength="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be above 18" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="99" MinimumValue="18"></asp:RangeValidator>
            </div>

            <div class="mb-3 mt-4">
                <label class="form-label">Your Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="e.g. 9000090000" MaxLength="10" TextMode="Phone"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="mb-3 mt-4">
                <label class="form-label">Your Pincode</label>
                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" placeholder="e.g. 560078" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPinCode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPinCode" ErrorMessage="Invalid Postal Code" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </div>



            <div class="mb-3">
                <label class="form-label">Full Name:</label>
                <asp:TextBox ID="txtFullName" CssClass="form-control" runat="server" placeholder="Enter your full name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtFullName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="mb-3">
                <label class="form-label">Date of Birth:</label>
                <asp:TextBox ID="txtDOB" CssClass="form-control" runat="server" placeholder="MM/DD/YYYY"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtDOB"></asp:RequiredFieldValidator>
            </div>

            <div class="mb-3">
                <label class="form-label">Gender:</label>
                <div class="form-check">
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" CssClass="form-check-input" />
                    <label class="form-check-label" for="rbMale">Male</label>
                </div>
                <div class="form-check">
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" CssClass="form-check-input" />
                    <label class="form-check-label" for="rbFemale">Female</label>
                </div>
            </div>

            <div class="mb-3 row">
                <div class="col-md-6">
                    <label class="form-label">Height (cm/in):</label>
                    <asp:TextBox ID="txtHeight" CssClass="form-control" runat="server" placeholder="Enter height"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtHeight" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Weight (kg/lbs):</label>
                    <asp:TextBox ID="txtWeight" CssClass="form-control" runat="server" placeholder="Enter weight"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtWeight" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Do you have a family history of chronic diseases?</label>
                <div class="form-check">
                    <asp:RadioButton ID="rdoYes" runat="server" GroupName="YesNoGroup" Text="Yes" />
                    <asp:RadioButton ID="rdoNo" runat="server" GroupName="YesNoGroup" Text="No" />
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">If yes, specify:</label>
                <asp:TextBox ID="txtFamilyHistoryDetails" CssClass="form-control" runat="server" placeholder="Specify condition"></asp:TextBox>
            </div>

            <!--Payment button -->
            <asp:Button ID="btnPay" runat="server" CssClass="btn btn-success w-100" Text="Pay for Insurance" OnClientClick="payNow(); return false;" />
            <br />

            <asp:Button ID="btnSubmit" runat="server" CssClass="btn mt-4 btn-success w-100" Text="Submit" OnClick="btnSubmit_Click" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Return Home" CausesValidation="False" OnClick="Button1_Click"/>
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
            <asp:HiddenField ID="hdnPaymentStatus" runat="server" />
        </asp:Panel>
        </div>







        





    </form>
</body>
</html>
