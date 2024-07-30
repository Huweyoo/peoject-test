<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="testingssss.Interface.blog" %>

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
      Educational Attainment Degree
    </h1>
  </section>
  </form>
    <div class="blog-content">
    <div class="row">
      <div class="blog-left">
        <img src="/landing/resources/certificate.jpg" alt="">
        <h2>Educational Attainment Degree</h2>
        <p>
          Upon completion of the rigorous and comprehensive senior high school program, students are conferred with the esteemed Senior High School Diploma. This diploma symbolizes not only the successful culmination of their secondary education journey but also serves as a testament to their dedication, perseverance, and academic excellence throughout their high school years.
        </p>
        <br>
        <p>
          Attaining this diploma signifies that students have acquired a broad range of knowledge across various subjects, developed critical thinking and problem-solving skills, honed their communication abilities, and demonstrated proficiency in their chosen tracks or strands. It reflects their readiness to pursue higher education at colleges or universities, engage in vocational training, or enter the workforce with confidence.
        </p>
        <br>
        <p>
          Furthermore, the Senior High School Diploma represents more than just an academic credential—it embodies the personal growth, character development, and resilience that students have cultivated during their time in high school. It is a badge of honor that acknowledges their achievements, celebrates their potential, and empowers them to chart their own paths towards success in whichever direction they choose to pursue.
        </p>
        <br>
        <p>
          With this diploma in hand, graduates embark on the next chapter of their lives equipped with the knowledge, skills, and determination to overcome challenges, seize opportunities, and make meaningful contributions to their communities and the world at large. It is a testament to their hard work, dedication, and limitless potential as they continue to strive for excellence and make their mark on the world.
        </p>
        <div class="comment-box">
          <h3>
            Leave a Comment
          </h3>
          <form action="" class="comment-form">
            <input type="text" placeholder="Enter Name">
            <input type="text" placeholder="Enter Email">
            <textarea rows="5" placeholder="Your Comment"></textarea>
            <button type="submit" class="hero-btn red-btn">Post Comment</button>
          </form>
        </div>
      </div>
      <div class="blog-right">
        <h3>
          Post Categories
        </h3>
        <div>
          <span>
            STEM
          </span>
          <span>
            15
          </span>
        </div>
        <div>
          <span>
            GAS
          </span>
          <span>
            15
          </span>
        </div>
        <div>
          <span>
            ABM
          </span>
          <span>
            15
          </span>
        </div>
        <div>
          <span>
            HUMSS
          </span>
          <span>
            15
          </span>
        </div>
        <div>
          <span>
            ICT
          </span>
          <span>
            15
          </span>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
