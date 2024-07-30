<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enrolled.aspx.cs" Inherits="testingssss.Interface.form.enrolled" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="/landing/assets/css/style.css" />
    <link rel="stylesheet" href="/landing/assets/css/form.css" /> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <title>Enrollment</title>
    <link rel="icon" href="/landing/resources/Log-2.png" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="sub-header">
            <nav>
                <a href="index.aspx">
                    <img src="/landing/resources/Log-2.png" id="logsu" />
                </a>
                <div class="nav-links" id="navLinks">
                    <i class="fa fa-times" onclick="hideMenu()"></i>
                    <ul>
                        <li>
                            <a href="/landing/interface/index.aspx">BACK</a>
                        </li>
                    </ul>
                </div>
                <i class="fa fa-bars" onclick="showMenu()"></i>
            </nav>
            <div class="cont">
                <h2>
                    Novaliches Senior High Enrollment Form
                    <p><!--Already Enrolled--></p>
                </h2>
            </div>
        </section>

        <div class="container">
            <header>Student Enrollment Form - Already Enrolled</header>
            <asp:Panel runat="server" CssClass="form first">
                <div class="details ID">
                    <span class="title">Student Credentials</span>
                    <div class="fields">
                        <div class="input-field">
                            <label for="learnerReferenceNumber" class="cent">LRN:</label>
                            <asp:TextBox ID="learnerReferenceNumber" runat="server" TextMode="SingleLine" placeholder="Enter Learner Reference Number" MaxLength="12" CssClass="input-control-1" required="required" oninput="validateMobileNumber(this)"></asp:TextBox>
                            <asp:Label ID="errorMessage" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="details personal">
                    <span class="title">Personal Details</span>
                    <div class="fields">
                        <div class="input-field">
                            <label>First Name</label>
                            <asp:TextBox ID="firstName" runat="server" TextMode="SingleLine" placeholder="Enter your First Name" CssClass="input-control" required="required"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Middle Name</label>
                            <asp:TextBox ID="middleName" runat="server" TextMode="SingleLine" placeholder="Enter your Middle Name" CssClass="input-control" required="required"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Last Name</label>
                            <asp:TextBox ID="lastName" runat="server" TextMode="SingleLine" placeholder="Enter your Last Name" CssClass="input-control" required="required"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Mobile Number</label>
                            <asp:TextBox ID="mobileNumber" runat="server" TextMode="SingleLine" placeholder="Enter mobile number" CssClass="input-control" MaxLength="11" required="required"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Gender</label>
                            <asp:DropDownList ID="gender" runat="server" CssClass="input-control" required="required">
                                <asp:ListItem Text="Select gender" Value="" Selected="True" Disabled="True"></asp:ListItem>
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Email</label>
                            <asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="Enter your email" CssClass="input-control" required="required"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>PSA Birth Certficate Number:</label>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" placeholder="Enter PSA Birth Certificate Number" CssClass="input-control" required="required"></asp:TextBox>

                        </div>
                        <div class="input-field">
                            <label>Quarterly Grade:</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input-control" required="required" />
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="nextBtn" OnClick="Button1_Click" />
                    </div>
                </div>
            </asp:Panel>
        </div>

        

        
        <asp:Panel ID="panelFooter" runat="server" CssClass="footer">
            <section class="footer">
                <h4>About Us</h4>
                <p>GROUP 4 - SYSTEM INTEGRATION ARCHITECTURE</p>
                <div class="icons">
                    <i class="fa fa-facebook"></i>
                    <i class="fa fa-twitter"></i>
                    <i class="fa fa-instagram"></i>
                    <i class="fa fa-linkedin"></i>
                </div>
            </section>
        </asp:Panel>
    </form>
    <script type="text/javascript">
        function showMenu() {
            document.getElementById('navLinks').style.right = "0";
        }

        function hideMenu() {
            document.getElementById('navLinks').style.right = "-200px";
        }

        document.addEventListener('DOMContentLoaded', function () {
            const textBox = document.getElementById('<%= learnerReferenceNumber.ClientID %>');
            const errorMessage = document.getElementById('<%= errorMessage.ClientID %>');

            textBox.addEventListener('input', function () {
                const value = textBox.value;
                const regex = /^\d{0,12}$/;
                if (!regex.test(value) || value.length !== 12) {
                    errorMessage.style.display = 'inline';
                    errorMessage.innerText = "Please enter exactly 12 digit numbers.";
                } else {
                    errorMessage.style.display = 'none';
                    errorMessage.innerText = "";
                }
            });

            textBox.addEventListener('blur', function () {
                const value = textBox.value;
                if (value.length !== 12) {
                    errorMessage.style.display = 'inline';
                    errorMessage.innerText = "Please enter exactly 12 digit numbers.";
                } else {
                    errorMessage.style.display = 'none';
                    errorMessage.innerText = "";
                }


            });
        });
    </script>
</body>
</html>