<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="testingssss.Interface.calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
 <title>Enrollment</title>
    <link rel="stylesheet" href="/landing/assets/css/style.css" />
    <link rel="stylesheet" href="/landing/assets/css/calendar.css" />
 <link rel="icon" href="/landing/resources/Novaliches Senior High School.png" />
 <style>
 </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="sub-header">
            <nav>
                <a href="index.html"><img src="/resources/Novaliches Senior High School.png" /></a>
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
                Mark your calendar and make every day an adventure worth remembering!
            </h1>
        </section>

        <section class="calendar">
            <div class="container">
                <div class="left">
                    <div class="calendar">
                        <div class="month">
                            <asp:LinkButton ID="prevMonth" runat="server" CssClass="fas fa-angle-left prev"></asp:LinkButton>
                            <div class="date"><asp:Label ID="lblMonthYear" runat="server"></asp:Label></div>
                            <asp:LinkButton ID="nextMonth" runat="server" CssClass="fas fa-angle-right next"></asp:LinkButton>
                        </div>
                        <div class="weekdays">
                            <div>Sun</div>
                            <div>Mon</div>
                            <div>Tue</div>
                            <div>Wed</div>
                            <div>Thu</div>
                            <div>Fri</div>
                            <div>Sat</div>
                        </div>
                        <div class="days"></div>
                        <div class="goto-today">
                            <div class="goto">
                                <asp:TextBox ID="txtDateInput" runat="server" CssClass="date-input" placeholder="mm/yyyy"></asp:TextBox>
                                <asp:Button ID="btnGo" runat="server" CssClass="goto-btn" Text="Go" OnClick="btnGo_Click" />
                            </div>
                            <asp:Button ID="btnToday" runat="server" CssClass="today-btn" Text="Today" OnClick="btnToday_Click" />
                        </div>
                    </div>
                </div>
                <div class="right">
                    <div class="today-date">
                        <div class="event-day"><asp:Label ID="lblEventDay" runat="server"></asp:Label></div>
                        <div class="event-date"><asp:Label ID="lblEventDate" runat="server"></asp:Label></div>
                    </div>
                    <div class="events"></div>
                    <div class="add-event-wrapper">
                        <div class="add-event-header">
                            <div class="title">Add Event</div>
                            <asp:LinkButton ID="btnClose" runat="server" CssClass="fas fa-times close" OnClick="btnClose_Click"></asp:LinkButton>
                        </div>
                        <div class="add-event-body">
                            <div class="add-event-input">
                                <asp:TextBox ID="txtEventName" runat="server" CssClass="event-name" placeholder="Event Name"></asp:TextBox>
                            </div>
                            <div class="add-event-input">
                                <asp:TextBox ID="txtEventTimeFrom" runat="server" CssClass="event-time-from" placeholder="Event Time From"></asp:TextBox>
                            </div>
                            <div class="add-event-input">
                                <asp:TextBox ID="txtEventTimeTo" runat="server" CssClass="event-time-to" placeholder="Event Time To"></asp:TextBox>
                            </div>
                        </div>
                        <div class="add-event-footer">
                            <asp:Button ID="btnAddEvent" runat="server" CssClass="add-event-btn" Text="Add Event" OnClick="btnAddEvent_Click" />
                        </div>
                    </div>
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

    <script src="/landing/assets/js/cal.js"></script>
    </form>
</body>
</html>
