<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="humss.aspx.cs" Inherits="testingssss.Interface.strand.humss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />
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
        <a href="index.html"><img src="/landing/resources/Log-2.png" /></a>
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
    <h1>
        Accountancy, Business, And Management
    </h1>
</section>
         <section class="Course">
            <div class="row">
                <div class="strand-col">
                    <img src="/landing/resources/backsu (3).jpg" class="profe" />
                    <h3>
                        This Strand encompasses a set of college courses tailored to provide focused education and training in <br />Humanities, And Social Science disciplines which are the:
                    </h3>
                    <p>
                        Bachelor of Science in Philosophy
                    </p>
                    <p>
                        Bachelor of Science in Literature
                    </p>
                    <p>
                        Bachelor of Science in History
                    </p>
                    <p>
                        Bachelor of Science in Political Science
                    </p>
                    <p>
                        Bachelor of Science in Psychology
                    </p>
                    <br />
                    <br />
                    <br />
                    <asp:HyperLink ID="backLink" runat="server" NavigateUrl="/landing/interface/stranding.aspx" CssClass="hero-btn red-btn l-btn">Back</asp:HyperLink>
                </div>
            </div>
        </section>

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
</body>
</html>
