<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info_page.aspx.cs" Inherits="PRJ.aspx.Info_page" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insurance Information</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #7b2cbf, #c084fc, #e6ccff, #ffffff);
            min-height: 100vh;
            color: #333;
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            font-size: 42px;
            color: white;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 40px 20px;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            width: 320px;
            padding: 20px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .card h3 {
            color: #6a1b9a;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 15px;
            line-height: 1.6;
            color: #555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; align-items: center; padding: 0px 30px; background-color: transparent; border-bottom: 2px solid rgba(255,255,255,0.3); position: relative;">
        <img src="../images/LOGO.png" alt="ClaimEase Logo" style="height: 50px; margin-right: 15px;" />
        <h1 style="margin-left:300px; font-size: 38px; color: white;">ClaimEase Insurance Portal</h1>
        </div>
        <div class="container">
            <div class="card">
                <img src="../images/term_life_insurance_illustration.jpg" alt="Term Life Insurance" />
                <h3>Term Life Insurance</h3>
                <p>
                    Term life insurance offers coverage for a specified time period—usually 10, 20, or 30 years.
                    It’s an affordable way to ensure your family’s financial stability in the event of your passing.
                    Ideal for young families and primary income earners.
                </p>
            </div>
            <div class="card">
                <img src="../images/small_health_insurance.jpg" alt="Health Insurance" />
                <h3>Health Insurance</h3>
                <p>
                    Health insurance helps you manage and reduce your medical expenses.
                    It covers doctor visits, hospitalization, emergency services, and medications.
                    Many policies also include wellness and preventive care benefits.
                </p>
            </div>
            <div class="card">
                <img src="../images/small_car_insurance.jpg" alt="Vehicle Insurance" />
                <h3>Vehicle Insurance</h3>
                <p>
                    Vehicle insurance safeguards you from financial loss due to car accidents, theft, or natural disasters.
                    It includes liability, collision, and comprehensive coverage. Often legally required, and always smart.
                </p>
            </div>

            <div class="card">
                <h3>Term Life Insurance Renewal</h3>
                <p>
                    Term life insurance offers coverage for a fixed period (e.g., 10, 20, or 30 years).
                    It's affordable and protects your family’s financial future in case of unexpected events.
                </p>
                <p>
                    <strong>Renewal Info:</strong> Term policies often have the option to renew annually after the initial term ends.
                    Premiums may increase upon renewal. Consider converting to a permanent policy before expiry.
                </p>
            </div>

            <div class="card">
                <h3>Health Insurance</h3>
                <p>
                    Health insurance covers medical costs like doctor visits, hospitalization, and prescriptions.
                    It helps you manage routine and emergency care affordably.
                </p>
                <p>
                    <strong>Renewal Info:</strong> Health insurance is typically renewed annually.
                    Be sure to review changes in coverage, premiums, and network providers during renewal season.
                </p>
            </div>
            <div class="card">
                <h3>Vehicle Insurance</h3>
                <p>
                    Vehicle insurance protects you against financial loss from accidents, theft, or damage.
                    It may include liability, collision, and comprehensive coverage.
                </p>
                <p>
                    <strong>Renewal Info:</strong> Most vehicle insurance policies renew every 6 or 12 months.
                    Always compare quotes and check for no-claim bonuses or updated coverage options.
                </p>
            </div>



        </div>
        <footer style="background-color: rgba(85, 26, 139, 0.95); color: white; text-align: center; padding: 10px; margin-top: 40px; border-top-left-radius: 20px; border-top-right-radius: 20px;">
                    <p style="margin: 0;">&copy; 2025 ClaimEase Insurance Services. All rights reserved.</p>
                    <p style="margin: 5px 0 0;">Contact us: info.claim@gmail.com | +91 9834762881</p>
                    <p style="margin: 5px 0 0; font-size: 13px;">Your trusted partner in Life, Health & Vehicle Insurance.</p>
            </footer>

    </form>
</body>
</html>
