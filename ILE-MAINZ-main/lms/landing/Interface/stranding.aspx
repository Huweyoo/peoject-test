<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stranding.aspx.cs" Inherits="testingssss.Interface.strands" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet" />
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
                        <li><a href="/landing/Interface/index.aspx">HOME</a></li>
                        <li><a href="/landing/Interface/about.aspx">ABOUT</a></li>
                        <li><a href="/landing/Interface/stranding.aspx">STRAND</a></li>
                        <li><a href="/landing/Interface/blog.aspx">BLOG</a></li>
                        <li><a href="/landing/Interface/contact.aspx">CONTACT</a></li>
                        <li><a href="/landing/Interface/calendar.aspx">CALENDAR</a></li>
                        <li><a href="file:///C:/Users/mclar/OneDrive/Documents/sia/logginginsu/index.html">LOG IN</a></li>
                    </ul>
                </div>
                <i class="fa fa-bars" onclick="showMenu()"></i>
            </nav>
            <h1>Strand That We Offer!</h1>
        </section>

        <section class="Course">
            <div class="row">
                <div class="course-col">
                    <asp:Image ID="imgABM" runat="server" CssClass="logorist" ImageUrl="/landing/resources/logoist (3).png" AlternateText="ABM" />
                    <h3>Accountancy, Business, And Management</h3>
                    <p>
                        The ABM (Accountancy, Business, and Management) strand in senior high school serves as a dynamic gateway for students to embark on a journey towards future success. With a focus on critical thinking, financial literacy, and strategic decision-making, ABM equips learners with the essential tools needed to navigate the complex landscapes of the business world.
                    </p>
                    <asp:HyperLink ID="lnkABM" runat="server" NavigateUrl="/landing/interface/strands/abm.aspx" CssClass="hero-btn red-btn l-btn">Courses To Offer!</asp:HyperLink>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgHUMSS" runat="server" CssClass="logorist" ImageUrl="/landing/resources/logorist.png" AlternateText="HUMSS" />
                    <h3>Humanities, And Social Science</h3>
                    <p>
                        The HUMSS (Humanities and Social Sciences) strand in senior high school serves as a beacon of enlightenment, guiding students towards a deeper understanding of the world and their place within it. With a rich curriculum spanning subjects like literature, philosophy, history, sociology, and anthropology, HUMSS cultivates critical thinking, empathy, and cultural awareness.
                    </p>
                    <asp:HyperLink ID="lnkHUMSS" runat="server" NavigateUrl="/landing/interface/strands/humss.aspx" CssClass="hero-btn red-btn l-btn">Courses To Offer!</asp:HyperLink>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgSTEM" runat="server" CssClass="logorist" ImageUrl="/landing/resources/logoist (1).png" AlternateText="STEM" />
                    <h3>Science, Technology, Engineering And Mathematics</h3>
                    <p>
                        The STEM (Science, Technology, Engineering, and Mathematics) strand in senior high school serves as a catalyst for exploration and advancement, propelling students towards a future defined by innovation and discovery. With a comprehensive curriculum that encompasses subjects like physics, chemistry, biology, mathematics, and computer science, STEM ignites a passion for inquiry and problem-solving.
                    </p>
                    <asp:HyperLink ID="lnkSTEM" runat="server" NavigateUrl="/landing/interface/strands/stem.aspx" CssClass="hero-btn red-btn l-btn">Courses To Offer!</asp:HyperLink>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgICT" runat="server" CssClass="logorist" ImageUrl="/landing/resources/logoist (2).png" AlternateText="ICT" />
                    <h3>Information Communication Technology</h3>
                    <p>
                        The ICT (Information and Communications Technology) strand in senior high school serves as a launching pad for the tech-savvy leaders of tomorrow, providing a comprehensive education in the rapidly evolving world of digital technology. Through a diverse curriculum that covers programming, web development, networking, multimedia, and more, ICT equips students with the skills and knowledge needed to thrive in the digital age.
                    </p>
                    <asp:HyperLink ID="lnkICT" runat="server" NavigateUrl="/landing/interface/strands/ict.aspx" CssClass="hero-btn red-btn l-btn">Courses To Offer!</asp:HyperLink>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgGAS" runat="server" CssClass="logorist" ImageUrl="/landing/resources/logoist (4).png" AlternateText="GAS" />
                    <h3>General Academic Strand</h3>
                    <p>
                        The GAS (General Academic Strand) in senior high school provides students with a versatile and comprehensive education that prepares them for a wide array of future pathways. With a flexible curriculum covering subjects such as humanities, social sciences, natural sciences, and applied subjects, GAS equips students with a well-rounded skill set and a broad knowledge base. This versatility allows students to explore their interests, hone their talents, and chart their own unique course towards success.
                    </p>
                    <asp:HyperLink ID="lnkGAS" runat="server" NavigateUrl="/landing/interface/strands/gas.aspx" CssClass="hero-btn red-btn l-btn">Courses To Offer!</asp:HyperLink>
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
