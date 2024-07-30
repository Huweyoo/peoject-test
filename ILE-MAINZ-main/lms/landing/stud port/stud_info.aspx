<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stud_info.aspx.cs" Inherits="testingssss.stud_port.stud_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><title>
	Learning Management System
</title><link rel="icon" href="/landing/resources/Novaliches Senior High School.png" type="image/x-icon" /><link rel="stylesheet" href="../CSS/Student/studentMasterPage.css" /><link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/classInvitation.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/classSubjects.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/DashBoard.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/notificationDetails.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/notifications.css"/>
    <link rel="stylesheet" href="/landing/assets/css/stud_port/studentMasterPage.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/studentStream.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/subject.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/submitClasswork.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/viewAnnouncement.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/sph.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/grades.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/int.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.2/circle-progress.min.js"></script>
</head>
<body>
         <form id="form1" runat="server" method="post" action="./classSubjects.aspx">
        <asp:HiddenField ID="__EVENTTARGET" runat="server" />
        <asp:HiddenField ID="__EVENTARGUMENT" runat="server" />
        <asp:HiddenField ID="__LASTFOCUS" runat="server" />
        <asp:HiddenField ID="__VIEWSTATE" runat="server" Value="NQrkEn4k4zIvuj8O8S0LcW6n48MLx0/r5g0dOFVozQkdcXSb8kXt++mfeXSAir9K+c8erfgbDRi9/oJO9oTOf6mV1rSwQ3hUMjWy4tFh/p/R+zxVbVIpP0b//P8dEBPcZsdz6tbBHTTrzmDzPXeoXbgHdQAwyG6d801aJ4AgtzBVrvcRNz6qhszpUMxlCf/D3wd2aBoyXn3AKna26rS/Mg==" />
      

  <header>
      <div class="header-content">
          <a href="DashBoard.aspx"><img src="/landing/resources/Novaliches Senior High School.png" alt="LOGO" /></a>
          <a href="DashBoard.aspx"> <h2> Novaliches High School</h2></a>
      </div>
      <div class="sitemap"></div>
      <div class="header-login">
          <div class="dropdown">
              <button class="dropdown-toggle"><i class='bx bx-user-circle icon'></i><i class='bx bxs-down-arrow arrow'></i></button>
              <div class="dropdown-menu">
                  <a href="/interface/index.aspx"> <i class="fas fa-sign-out-alt"></i> Logout</a>
              </div>
          </div>
      </div>
  </header>

 <div class="container">
            <div class="side-bar">
                <div class="menu">
                    <div class="item-logo">
                        <img id="Image1" class="img-profile" src="/landing/resources/Group 1488.png" alt="Profile Image" />
                        <span id="Label1" class="admin-label">Welcome, </span><span id="lblUserEmail" class="admin-label">Michael Verano</span>
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/int.aspx" class="sub-btn"><i class='bx bxs-dashboard'></i>DashBoard</a>
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/stud_info.aspx"><i class="fas fa-book"></i>Student Information</a>
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/grades.aspx"><i class="fas fa-users"></i>Grades</a>
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/calendar.aspx"><i class="fa fa-archive" aria-hidden="true"></i>Calendar</a>
                    </div>
                    <div class="item">
                        <a href="notifications.aspx"><i class="fa fa-bell"></i>LMS</a>
                    </div>
                </div>
            </div>
     </div>
             <div class="container">
            <div class="side-bar">
                <div class="menu">
                    <div class="item-logo">
                        <img id="Image1" class="img-profile" src="/landing/resources/Group 1488.png" alt="Profile Image" />
                        <span id="Label1" class="admin-label">Welcome, </span><span id="lblUserEmail" class="admin-label">Michael Verano</span>
                    </div>
                    <div class="item">
                        <a href="int.html"><i class='bx bxs-dashboard'></i>DashBoard</a>
                    </div>
                    <div class="item">
                        <a href="stud_info.html" class="sub-btn"><i class="fas fa-book"></i>Student Information</a>
                    </div>
                    <div class="item">
                        <a href="grades.html"><i class="fas fa-users"></i>Grades</a>
                    </div>
                    <div class="item">
                        <a href="calendar.html"><i class="fa fa-archive" aria-hidden="true"></i>Calendar</a>
                    </div>
                    <div class="item">
                        <a href="notifications.aspx"><i class="fa fa-bell"></i>LMS</a>
                    </div>
                </div>
            </div>
            <main class="content">
                <div class="wrapper">
                    <div class="left">
                        <img src="/landing/resources/Group 1488.png" alt="user" width="100" />
                        <h4>John Michael Verano</h4>
                        <p>Grade 11 Student</p>
                    </div>
                    <div class="right">
                        <div class="info">
                            <h3>Personal Information</h3>
                            <div class="info_data">
                                <div class="data">
                                    <h4>Email</h4>
                                    <p>verano@gmail.com</p>
                                </div>
                                <div class="data">
                                    <h4>Phone</h4>
                                    <p>09612869134</p>
                                </div>
                            </div>
                        </div>
                        <div class="projects">
                            <h3>Status</h3>
                            <div class="projects_data">
                                <div class="data">
                                    <h4>Status</h4>
                                    <p>Enrolled</p>
                                </div>
                                <div class="data">
                                    <h4>Grades</h4>
                                    <p>Passed</p>
                                </div>
                            </div>
                        </div>
                          <div class="projects">
                <h3>Fathers Name</h3>
                <div class="projects_data">
                     <div class="data">
                        <h4>First Name</h4>
                        <p>John</p>
                     </div>
                     <div class="data">
                       <h4>Middle Name</h4>
                        <p>Michael</p>
                  </div>
                  <div class="data">
                    <h4>Last Name</h4>
                     <p>Verano</p>
               </div>
                </div>
            </div>
            <div class="projects">
                <h3>Mothers Name</h3>
                <div class="projects_data">
                     <div class="data">
                        <h4>First Name</h4>
                        <p>Ella</p>
                     </div>
                     <div class="data">
                       <h4>Middle Name</h4>
                        <p>John</p>
                  </div>
                  <div class="data">
                    <h4>Last Name</h4>
                     <p>Verano</p>
               </div>
                </div>
            </div>
            <div class="projects">
                <h3>Student Details</h3>
                <div class="projects_data">
                     <div class="data">
                        <h4>Learner Reference Number</h4>
                        <p>12345678910</p>
                     </div>
                </div>
            </div>
                    </div>
                </div>
            </main>
        </div>
</form>
    <script type="text/javascript">
        //<![CDATA[
        var theForm = document.forms['form1'];
        if (!theForm) {
            theForm = document.form1;
        }
        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }
        //]]>
    </script>
    <script>
        // Function to toggle the sub-menu
        $(".sub-btn").click(function () {
            $(this).siblings(".sub-menu").slideToggle();
            $(this).find(".dropdown").toggleClass("rotate");
        });
    </script>
     <script>
         const dropdownToggle = document.querySelector(".dropdown-toggle");
         const dropdownMenu = document.querySelector(".dropdown-menu");

         dropdownToggle.addEventListener("click", (e) => {
             e.preventDefault();
             dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
         });

         window.addEventListener("click", (e) => {
             if (!dropdownToggle.contains(e.target)) {
                 dropdownMenu.style.display = "none";
             }
         });
     </script>
     <script>

         function handleLinkClick(link) {

             var menuItems = document.querySelectorAll('.menu .item');
             menuItems.forEach(function (item) {
                 item.classList.remove('active');
             });


             link.parentNode.classList.add('active');


             localStorage.setItem('activeLink', link.getAttribute('href'));
         }


         var activeLink = localStorage.getItem('activeLink');

         if (activeLink) {

             var links = document.querySelectorAll('.menu a');
             links.forEach(function (link) {
                 if (link.getAttribute('href') === activeLink) {
                     handleLinkClick(link);
                 }
             });
         }

         var links = document.querySelectorAll('.menu a');


         links.forEach(function (link) {
             link.addEventListener('click', function () {
                 handleLinkClick(this);
             });
         });
     </script>
        
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3DDFC99C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="FIHvmacdNjIPJYixL+W3qGt3WDB09iy7+XmCDnQjADF9mEWeSkxr/Fox76q+/eDuFdzgbU4WGjV7FIA/Z6S2MUE/dUZO16Fb6zKAAmIwhqqsKwsLemYNP02pc7+pobHBe0oD9fSLPysRbU/khkwKhg==" />
</div>

<!-- Visual Studio Browser Link -->
<script type="text/javascript" src="https://localhost:44399/34cbc411d821471daecd1e7f38c868e2/browserLink" async="async" id="__browserLink_initializationData" data-requestId="4d228d63cde542b3ae8efe103c435495" data-appName="Chrome"></script>
<!-- End Browser Link -->
        
</body>
</html>
