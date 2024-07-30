<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="testingssss.Interface.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link rel="preconnect" href="https://fonts.googleapis.com" />
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
 <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />
 <link rel="stylesheet" href="/landing/assets/css/style.css" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
 <title>Enrollment</title>
 <link rel="icon" href="/landing/resources/Novaliches Senior High School.png" />
</head>
<body>
    
  <form id="form1" runat="server">
    <section class="sub-header">
        <nav>
            <a href="index.html"><img src="/landing/resources/Novaliches Senior High School.png" /></a>
            <div class="nav-links" id="navLinks" runat="server">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li>
                        <a href="/landing/Interface/index.aspx">
                            HOME
                        </a>
                    </li>
                    <li>
                        <a href="/landing/Interface/about.aspx">
                            ABOUT
                        </a>
                    </li>
                    <li>
                        <a href="/landing/Interface/stranding.aspx">
                            STRAND
                        </a>
                    </li>
                    <li>
                        <a href="/landing/Interface/blog.aspx">
                            BLOG
                        </a>
                    </li>
                    <li>
                        <a href="/landing/Interface/contact.aspx">
                            CONTACT
                        </a>
                    </li>
                    <li>
                        <a href="/landing/Interface/calendar.aspx">
                            CALENDAR
                        </a>
                    </li>
                    <li>
                        <a href="file:///C:/Users/mclar/OneDrive/Documents/sia/logginginsu/index.html">
                            LOG IN
                        </a>
                    </li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <h1>Contact Us</h1>
    </section>

    <section class="location">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61739.900825227254!2d120.9567428486328!3d14.7270715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b1000fc5d4cb%3A0xb4643a900676b7e!2sNovaliches%20High%20School!5e0!3m2!1sen!2sph!4v1710528309958!5m2!1sen!2sph" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>

    <section class="contact-us">
        <div class="row">
            <div class="contact-col">
                <div>
                    <i class="fa fa-home"></i>
                    <span>
                        <h5>Metro Manila National Highway</h5>
                        <p>Novaliches, Quezon City, Metro Manila</p>
                    </span>
                </div>
                <div>
                    <i class="fa fa-phone"></i>
                    <span>
                        <h5>+65 012345678</h5>
                        <p>Monday to Saturday, 10AM to 6PM</p>
                    </span>
                </div>
                <div>
                    <i class="fa fa-envelope"></i>
                    <span>
                        <h5>novaliches@gmail.com</h5>
                        <p>Email us your question</p>
                    </span>
                </div>
            </div>
            <div class="contact-col">
                <asp:Panel ID="contactFormPanel" runat="server">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Your Name" required="required"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email" TextMode="Email" required="required"></asp:TextBox>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Enter Your Subject" required="required"></asp:TextBox>
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="8" placeholder="Message" required="required"></asp:TextBox>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="hero-btn red-btn" Text="Send Message" OnClick="SubmitMessage_Click" />
                </asp:Panel>
            </div>
        </div>
    </section>

      <asp:Panel ID="panelFooter" runat="server" CssClass="footer">
     <form id="form7">
    <section class="footer">
        <h4>
            About Us
        </h4>
        <p>
            GROUP 4 - SYSTEM INTEGRATION ARCHITECTURE
        </p>
        <div class="icons">
            <i class="fa fa-facebook"></i>
            <i class="fa fa-twitter"></i>
            <i class="fa fa-instagram"></i>
            <i class="fa fa-linkedin"></i>
        </div>
    </section>
</form>
</asp:Panel>

</form>
</body>
</html>
