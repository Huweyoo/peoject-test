﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="testingssss.stud_port.calendar" %>

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
    <link rel="stylesheet" href="/landing/assets/css/stud_port/style-cal.css" />
    <link rel="stylesheet" href="/landing/assets/css/stud_port/grades.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.2/circle-progress.min.js"></script>
</head>
<body>
     <form id="form1" runat="server">
        <div class="aspNetHidden">
            <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
            <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
            <input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="NQrkEn4k4zIvuj8O8S0LcW6n48MLx0/r5g0dOFVozQkdcXSb8kXt++mfeXSAir9K+c8erfgbDRi9/oJO9oTOf6mV1rSwQ3hUMjWy4tFh/p/R+zxVbVIpP0b//P8dEBPcZsdz6tbBHTTrzmDzPXeoXbgHdQAwyG6d801aJ4AgtzBVrvcRNz6qhszpUMxlCf/D3wd2aBoyXn3AKna26rS/Mg==" />
        </div>

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

        <header>
            <div class="header-content">
                <a href="DashBoard.aspx"><img src="/landing/resources/Novaliches Senior High School.png" alt="LOGO" /></a>
                <a href="DashBoard.aspx"><h2>Novaliches High School</h2></a>
            </div>
            <div class="sitemap"></div>
            <div class="header-login">
                <div class="dropdown">
                    <button class="dropdown-toggle"><i class='bx bx-user-circle icon'></i><i class='bx bxs-down-arrow arrow'></i></button>
                    <div class="dropdown-menu">
                        <a href="/interface/index.aspx"><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </div>
                </div>
            </div>
        </header>

        <div class="container">
            <div class="side-bar">
                <div class="menu">
                    <div class="item-logo">
                        <asp:Image ID="Image1" runat="server" CssClass="img-profile" ImageUrl="/landing/resources//Group 1488.png" />
                        <span id="Label1" class="admin-label">Welcome, </span><asp:Label ID="lblUserEmail" runat="server" CssClass="admin-label" Text="Michael Verano" />
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/int.aspx"><i class='bx bxs-dashboard'></i>DashBoard</a>
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/stud_info.aspx" class="sub-btn"><i class="fas fa-book"></i>Student Information</a>
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/grades.aspx"><i class="fas fa-users"></i>Grades</a>
                    </div>
                    <div class="item">
                        <a href="/landing/stud port/calendar.aspx"><i class="fa fa-archive" aria-hidden="true"></i>Calendar</a>
                    </div>
                    <div class="item">
                        <a href="/stud port/notifications.aspx"><i class="fa fa-bell"></i>LMS</a>
                    </div>
                </div>
            </div>
            <main class="content">
                <div class="recent-orders">
                    <h2></h2>
                    <div class="container flex">
                        <div class="calendar">
                            <div class="month flex">
                                <img class="prev" src="/resources/left-arrow.png" alt="" />
                                <div class="content">
                                    <h1>MAY</h1>
                                    <p>Wed May 11th 2022</p>
                                </div>
                                <img class="next" src="/resources/right-arrow.png" alt="" />
                            </div>
                            <div class="weekdays flex">
                                <div>Mon</div>
                                <div>Tue</div>
                                <div>Wed</div>
                                <div>Thur</div>
                                <div>Fri</div>
                                <div>Sat</div>
                                <div>Sun</div>
                            </div>
                            <div class="days flex">
                                <div class="previous-days">26</div>
                                <div class="previous-days">27</div>
                                <div class="previous-days">28</div>
                                <div class="previous-days">29</div>
                                <div class="previous-days">30</div>
                                <div class="previous-days">31</div>
                                <div>1</div>
                                <div class="today">11</div>
                                <div>31</div>
                                <div class="next-days">1</div>
                                <div class="next-days">2</div>
                                <div class="next-days">3</div>
                                <div class="next-days">4</div>
                                <div class="next-days">5</div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>

        <script>
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
    </form>

    <script type="text/javascript" src="https://localhost:44399/34cbc411d821471daecd1e7f38c868e2/browserLink" async="async" id="__browserLink_initializationData" data-requestId="4d228d63cde542b3ae8efe103c435495" data-appName="Chrome"></script>
    <script>
        const date = new Date();

        const renderCalendar = () => {
            date.setDate(1);
            const monthDays = document.querySelector(".days");
            const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();
            const prevLastDay = new Date(date.getFullYear(), date.getMonth(), 0).getDate();
            const firstDayIndex = date.getDay();
            const lastDayIndex = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDay();
            const nextDays = 7 - lastDayIndex - 1;
            const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

            document.querySelector(".content h1").innerHTML = months[date.getMonth()];
            document.querySelector(".content p").innerHTML = new Date().toDateString();

            let days = "";
            for (let x = firstDayIndex; x > 0; x--) {
                days += `<div class="previous-days">${prevLastDay - x + 1}</div>`;
            }

            for (let i = 1; i <= lastDay; i++) {
                if (i === new Date().getDate() && date.getMonth() === new Date().getMonth()) {
                    days += `<div class="today">${i}</div>`;
                } else {
                    days += `<div>${i}</div>`;
                }
            }

            for (let j = 1; j <= nextDays; j++) {
                days += `<div class="next-days">${j}</div>`;
                monthDays.innerHTML = days;
            }
        };

        document.querySelector(".prev").addEventListener("click", () => {
            date.setMonth(date.getMonth() - 1);
            renderCalendar();
        });

        document.querySelector(".next").addEventListener("click", () => {
            date.setMonth(date.getMonth() + 1);
            renderCalendar();
        });

        renderCalendar();
    </script>
</body>
</html>