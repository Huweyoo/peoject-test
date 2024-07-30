<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="testingssss.Interface.index" EnableEventValidation="false" ValidateRequest="false" %>
<!DOCTYPE html>
<html lang="en">
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
    <section class="header">
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
      <div class="text-box">
        <h1>
          Novaliches Senior High School
        </h1>
        <p>
          Unlocking potential, one enrollment at a time - welcome to the journey of limitless learning!
        </p>
        <asp:Button ID="btnEnroll" runat="server" CssClass="hero-btn enroll-button" Text="Enroll Now!" OnClick="btnEnroll_Click" />

        <asp:Panel ID="modal" CssClass="modal" runat="server" Style="display: none;">
          <h1>Are you Already Enrolled?</h1>
          <asp:Button ID="btnYes" runat="server" CssClass="hero-btn yes-btn" Text="Yes" OnClick="btnYes_Click" />
          <asp:Button ID="btnNo" runat="server" CssClass="hero-btn no-btn" Text="No" OnClick="btnNo_Click" />
        </asp:Panel>
      </div>
    </section>

    <!-- Strand Section -->
    <asp:Panel ID="panelCourse" runat="server" CssClass="Course">
        <form id="form2">
        <section class="Course">
            <h1>
                Strand We Offer
            </h1>
            <p>
                Dive into the stream of success with our offered strand - where passions meet purpose, and dreams find direction!
            </p>
            <div class="row">
                <div class="course-col">
                    <asp:Image ID="imgABM" CssClass="logorist" runat="server" ImageUrl="/landing/resources/logoist (1).png"  />
                    <h3>
                        Accountancy, Business, And Management
                    </h3>
                    <p>
                        The ABM (Accountancy, Business, and Management) strand in senior high school serves as a dynamic gateway for students to embark on a journey towards future success. With a focus on critical thinking, financial literacy, and strategic decision-making, ABM equips learners with the essential tools needed to navigate the complex landscapes of the business world.
                    </p>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgHUMSS" CssClass="logorist" runat="server" ImageUrl="/landing/resources/logorist.png" />
                    <h3>
                        Humanities, And Social Science
                    </h3>
                    <p>
                        The HUMSS (Humanities and Social Sciences) strand in senior high school serves as a beacon of enlightenment, guiding students towards a deeper understanding of the world and their place within it. With a rich curriculum spanning subjects like literature, philosophy, history, sociology, and anthropology, HUMSS cultivates critical thinking, empathy, and cultural awareness. Through the exploration of diverse perspectives and the examination of societal issues, students develop a profound sense of compassion and a commitment to social justice.
                    </p>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgSTEM" CssClass="logorist" runat="server" ImageUrl="/landing/resources/logoist (1).png" />
                    <h3>
                        Science, Technology, Engineering And Mathematics
                    </h3>
                    <p>
                        The STEM (Science, Technology, Engineering, and Mathematics) strand in senior high school serves as a catalyst for exploration and advancement, propelling students towards a future defined by innovation and discovery. With a comprehensive curriculum that encompasses subjects like physics, chemistry, biology, mathematics, and computer science, STEM ignites a passion for inquiry and problem-solving.
                    </p>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgICT" CssClass="logorist" runat="server" ImageUrl="/landing/resources/logoist (2).png" />
                    <h3>
                        Information Communication Technology
                    </h3>
                    <p>
                        The ICT (Information and Communications Technology) strand in senior high school serves as a launching pad for the tech-savvy leaders of tomorrow, providing a comprehensive education in the rapidly evolving world of digital technology. Through a diverse curriculum that covers programming, web development, networking, multimedia, and more, ICT equips students with the skills and knowledge needed to thrive in the digital age.
                    </p>
                </div>
                <div class="course-col">
                    <asp:Image ID="imgGAS" CssClass="logorist" runat="server" ImageUrl="/landing/resources/logoist (4).png" />
                    <h3>
                        General Academic Strand
                    </h3>
                    <p>
                        The GAS (General Academic Strand) in senior high school provides students with a versatile and comprehensive education that prepares them for a wide array of future pathways. With a flexible curriculum covering subjects such as humanities, social sciences, natural sciences, and applied subjects, GAS equips students with a well-rounded skill set and a broad knowledge base. This versatility allows students to explore their interests, hone their talents, and chart their own unique course towards success.
                    </p>
                </div>
            </div>
        </section>
    </form>
    </asp:Panel>

    <!-- Campus Section -->
    <asp:Panel ID="panelCampus" runat="server" CssClass="campus">
        <form id="form3">
        <section class="campus">
            <h1>
                Images of Campus
            </h1>
            <p>
                Discover the picturesque paradise where education meets aesthetics - our campus, where every corner is a frame-worthy masterpiece of inspiration and innovation!
            </p>
            <div class="row">
                <div class="campus-col">
                    <asp:Image ID="imgCampus1" CssClass="campus-img" runat="server" ImageUrl="/landing/resources/Frame 2.png" AlternateText="Novaliches Senior High School" />
                    <div class="layer">
                        <h3>
                            Novaliches Senior High School
                        </h3>
                    </div>
                </div>
                <div class="campus-col">
                    <asp:Image ID="imgCampus2" CssClass="campus-img" runat="server" ImageUrl="/landing/resources/Frame 2.png" AlternateText="Novaliches Senior High School" />
                    <div class="layer">
                        <h3>
                            Novaliches Senior High School
                        </h3>
                    </div>
                </div>
                <div class="campus-col">
                    <asp:Image ID="imgCampus3" CssClass="campus-img" runat="server" ImageUrl="/landing/resources/Frame 2.png" AlternateText="Novaliches Senior High School" />
                    <div class="layer">
                        <h3>
                            Novaliches Senior High School
                        </h3>
                    </div>
                </div>
            </div>
        </section>
    </form>
    </asp:Panel>

    <!-- Facilities Section -->
    <asp:Panel ID="panelFacilities" runat="server" CssClass="facilities">
         <form id="form4">
        <section class="facilities">
            <h1>
                Area To Visit!
            </h1>
            <p>
                Embark on an exploration of excellence in our campus oasis, where every corner holds a treasure trove of knowledge and inspiration waiting to be discovered!
            </p>
            <div class="row">
                <div class="facilities-col">
                    <asp:Image ID="imgLibrary" CssClass="facility-img" runat="server"  ImageUrl="/landing/resources/library.png" AlternateText="Library" />
                    <h3>
                        Library
                    </h3>
                    <p>
                        Dive into a world of boundless knowledge and adventure at our library - where every book is a portal to new discoveries and endless possibilities!
                    </p>
                </div>
                <div class="facilities-col">
                    <asp:Image ID="imgPlayground" CssClass="facility-img" runat="server" ImageUrl="/landing/resources/basketball.png" AlternateText="Play Ground" />
                    <h3>
                        Play Ground
                    </h3>
                    <p>
                        Fuel your imagination and unleash your spirit of play at our playground - where laughter echoes, friendships bloom, and memories are made with every leap and bound!
                    </p>
                </div>
                <div class="facilities-col">
                    <asp:Image ID="imgCafeteria" CssClass="facility-img" runat="server" ImageUrl="/landing/resources/library.png" AlternateText="Cafeteria" />
                    <h3>
                        Cafeteria
                    </h3>
                    <p>
                        Savor the flavors of community and creativity in our cafeteria - where every bite fuels not just the body, but also the bonds of friendship and the spirit of innovation!
                    </p>
                </div>
            </div>
        </section>
    </form>
    </asp:Panel>

    <!-- Testimonials Section -->
    <asp:Panel ID="panelTestimonials" runat="server" CssClass="testimonials">
         <form id="form5">
        <section class="testimonials">
            <h1>
                What Other Student Says
            </h1>
            <p>
                Your voice, our compass! Share your thoughts, shape your experience - together, let's navigate towards excellence through student feedback!
            </p>
            <div class="row">
                <div class="testimonial-col">
                    <asp:Image ID="imgUser1" runat="server" CssClass="testimonial-img" ImageUrl="/landing/resources/user2.jpg" AlternateText="John Michael Verano" />
                    <div>
                        <p>
                            Welcome to our vibrant learning community, where your journey begins! Get ready to embark on an adventure of discovery, growth, and endless possibilities. With open minds and supportive hearts, we're here to guide and empower you every step of the way. Let's make your time here unforgettable!
                        </p>
                        <h3>
                            John Michael Verano
                        </h3>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                </div>
                <div class="testimonial-col">
                    <asp:Image ID="imgUser2" runat="server" CssClass="testimonial-img" ImageUrl="/landing/resources/user1.jpg" AlternateText="Angel Sofia" />
                    <div>
                        <p>
                            Step into our dynamic learning community as your journey commences! Prepare for an expedition of exploration, development, and boundless opportunities. With minds open and hearts supportive, we're committed to steering and enabling your progress throughout. Together, let's create an indelible experience during your tenure here!
                        </p>
                        <h3>
                            Angel Sofia
                        </h3>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                </div>
            </div>
        </section>
    </form>
    </asp:Panel>

    <!-- CTA Section -->
    <asp:Panel ID="panelCTA" runat="server" >
        <form id="form6">
        <section class="cta">
            <h1>
                Unlock Your Potential: Enroll Today and Ignite Your Tomorrow!
            </h1>  
            <a href="contact.aspx" class="hero-btn">CONTACT US</a>
        </section>
    </form>
    </asp:Panel>
        
    <!-- Footer Section -->
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

    <!-- Javascript for Toggle Menu -->
     <script>
         function showMenu() {
             var navLinks = document.getElementById("navLinks");
             navLinks.style.right = "0";
         }

         function hideMenu() {
             var navLinks = document.getElementById("navLinks");
             navLinks.style.right = "-200px";
         }
     </script>

    <script>
        window.onload = function () {
            const modal = document.getElementById('<%= modal.ClientID %>');
            const enrollModal = document.querySelector('.enroll-button');

            enrollModal.addEventListener('click', () => {
                setTimeout(() => {
                    modal.style.display = 'block'; // Display the modal after a delay
                }, 200); // Adjust the delay as needed
            });

            // Close modal when clicking "No" button
            const noModal = document.querySelector('.no-btn');
            noModal.addEventListener('click', () => {
                modal.style.display = 'none'; // Hide the modal
                window.location.href = '/landing/Interface/form/not-enrolled.aspx';
            });

            // Close modal when clicking "Yes" button
            const yesModal = document.querySelector('.yes-btn');
            yesModal.addEventListener('click', () => {
                modal.style.display = 'none'; // Hide the modal
                window.location.href = '/landing/Interface/form/enrolled.aspx';
            });

            // Close modal when clicking anywhere outside of it
            window.addEventListener('click', (event) => {
                if (event.target === modal) {
                    modal.style.display = 'none'; // Hide the modal
                }
            });
        };
    </script>

  </form>
</body>
</html>
