<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="testingssss.Interface.about" %>

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
            <h1>
                About Us
            </h1>
        </section>

        <section class="about-us">
            <div class="row">
                <div class="about-col">
                    <h1>
                        Novaliches Senior High School
                    </h1>
                    <p>
                        Welcome to the Gateway to Success, where dreams find wings to soar and futures are nurtured to flourish! Our mission is to provide you with the tools, resources, and support necessary to turn your aspirations into reality.
                        <br />
                    </p>
                    <p>
                        Within these virtual halls, you'll discover a wealth of opportunities waiting to be seized. Whether you're embarking on a journey of personal growth, academic achievement, or professional development, this gateway serves as your guiding light towards success.
                        <br />
                    </p>
                    <p>
                        Step through our digital doorway and immerse yourself in a world of endless possibilities. From educational courses designed to expand your knowledge to career-building workshops tailored to sharpen your skills, we offer a diverse array of pathways to help you reach your goals.
                        <br />
                    </p>
                    <asp:HyperLink ID="btnExplore" runat="server" NavigateUrl="/landing/interface/stranding.aspx" CssClass="hero-btn red-btn" Text="Explore Now" />
                </div>
                <div class="about-col">
                    <asp:Image ID="imgAbout" runat="server" ImageUrl="/landing/resources/about.jpg" AlternateText="About Image" />
                </div>
            </div>
        </section>
    </form>
</body>
</html>
