﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="lms.sis.SISPAGES.ManageUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Users</title>
    <link rel="stylesheet" type="text/css" href="/css/site.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.rtl.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.rtl.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-grid.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-grid.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-grid.rtl.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-grid.rtl.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-reboot.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-reboot.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-reboot.rtl.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-reboot.rtl.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-reboot.rtl.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-utilities.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-utilities.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-utilities.rtl.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-utilities.rtl.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="scripts/sweetAlert.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body>
    <div class="row m-0 p-0 bg-danger">
 <div class="col-lg-3 m-0 bg-danger text-white text-uppercase" style="height: 100vh">
     <div class="container-fluid">
         <div class="bg-danger p-2 w-100 shadow-none" align="center">
             <center>
                  <img src="../../Resources/Novaliches Senior High School.png"200" style="margin-left: -7px" />
             </center>
         </div>

         <a href="Admin.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
             <span class="d-flex">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                     <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 12l8.954-8.955c.44-.439 1.152-.439 1.591 0L21.75 12M4.5 9.75v10.125c0 .621.504 1.125 1.125 1.125H9.75v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21h4.125c.621 0 1.125-.504 1.125-1.125V9.75M8.25 21h8.25" />
                 </svg>
                 Home
             </span>
         </a>

         <a href="StudentManagement.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
             <span class="d-flex">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                     <path stroke-linecap="round" stroke-linejoin="round" d="M4.26 10.147a60.436 60.436 0 00-.491 6.347A48.627 48.627 0 0112 20.904a48.627 48.627 0 018.232-4.41 60.46 60.46 0 00-.491-6.347m-15.482 0a50.57 50.57 0 00-2.658-.813A59.905 59.905 0 0112 3.493a59.902 59.902 0 0110.399 5.84c-.896.248-1.783.52-2.658.814m-15.482 0A50.697 50.697 0 0112 13.489a50.702 50.702 0 017.74-3.342M6.75 15a.75.75 0 100-1.5.75.75 0 000 1.5zm0 0v-3.675A55.378 55.378 0 0112 8.443m-7.007 11.55A5.981 5.981 0 006.75 15.75v-1.5" />
                 </svg>
                 Student Management
             </span>
         </a>

          <a href="ClassRegistration.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
  <span class="d-flex">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
          <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 12h16.5m-16.5 3.75h16.5M3.75 19.5h16.5M5.625 4.5h12.75a1.875 1.875 0 010 3.75H5.625a1.875 1.875 0 010-3.75z" />
                 </svg>
                Class Registration
             </span>
         </a>

         <a href="CourseManagement.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
             <span class="d-flex">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                     <path stroke-linecap="round" stroke-linejoin="round" d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
                 </svg>
                 Strand Management
             </span>
         </a>

         <a href="SectionManagement.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
             <span class="d-flex">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                     <path stroke-linecap="round" stroke-linejoin="round" d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                 </svg>
                 Section Management
             </span>
         </a>

                 <a href="SubjectModule.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
             <span class="d-flex">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                     <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 12h16.5m-16.5 3.75h16.5M3.75 19.5h16.5M5.625 4.5h12.75a1.875 1.875 0 010 3.75H5.625a1.875 1.875 0 010-3.75z" />
                </svg>
                 Subject Module
             </span>
         </a>

         <a href="AddingGrades.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
             <span class="d-flex">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                     <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                 </svg>
                 Adding Grades
             </span>
         </a>

         <a href="ManageUser.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
             <span class="d-flex">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                     <path stroke-linecap="round" stroke-linejoin="round" d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
                 </svg>
                 Manage Users
             </span>
         </a>
               <a href="adminCalendar.aspx" class="card card-body bg-pink p-2 w-100 mt-2 text-decoration-none text-black">
                <span class="d-flex">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" width="18" height="18" class="sidebar-icon">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M19 21H5a2 2 0 01-2-2V6a2 2 0 012-2h2V3a3 3 0 116 0v1h2a2 2 0 012 2v13a2 2 0 01-2 2zM16 10a4 4 0 00-8 0"></path>
                    </svg>
                    Calendar
                </span>
            </a>

        </div>
    </div>

    <div class="col-lg-9 bg-white">
        <br />
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <p class="inter-700 text-uppercase">Navigation > Manage Users</p>
                </div>
                <div class="col-lg-6" align="right">
                    <div class="dropdown">
                        <a class="border-0 border-none bg-white text-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" width="28" height="28">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
                            </svg>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <li class="p-1 text-uppercase"><a id="A1" runat="server" class="dropdown-item bg-danger text-white" onserverclick="Logout_Click">Log-out</a></li>
                        </ul>
                    </div>
                          </div>
            <br />
            <div class="row">
                <div class="col-lg-8">
                       <form id="form1" runat="server">
                    <div class="input-group border-gray border shadow mb-5">
                        <%--<input type="search" class="bg-gray border-none border-0 px-2" rows="1" style="resize: none; width: 90%; outline: none" />--%>
                           <asp:TextBox ID="txtMUsearch" runat="server" CssClass="bg-gray border-none border-0 px-2" style="resize: none; width: 90%; outline: none"></asp:TextBox>
                        <span class="input-group-append">
                           <%-- <button class="btn bg-white ms-n3 border-gray" type="button">--%>
                            <asp:Button ID="MUsearch" runat="server" CssClass="btn bg-white ms-n3 border-gray" OnClick="MUsearch_Click" />
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" width="18" height="18" style="margin-bottom: 4px">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
                                </svg>
                            </button>
                        </span>
                    </div>
                </div>

                <div class="col-lg-4"></div>
            </div>

                <br />
                <div class="card card-body border-gray inter-700" style="background-color: var(--bs-gray-300)">
                    <br />
                    <div class="row">
                        <div class="col-lg-6 mb-2">
                            <label for="MUid" class="text-uppercase">User ID</label>
                            <asp:TextBox ID="MUid" runat="server" CssClass="form-control w-100"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-lg-6 d-flex align-items-center">
                            <label for="MUname" class="text-uppercase">Name</label>
                            <asp:TextBox ID="MUname" runat="server" CssClass="form-control w-100 mx-2"></asp:TextBox>
                        </div>
                        <div class="col-lg-6 d-flex align-items-center">
                            <label for="MUrole" class="text-uppercase">Role</label>
                            <asp:TextBox ID="MUrole" runat="server" CssClass="form-control w-100 mx-2" Text="Admin" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-lg-6 d-flex align-items-center">
                            <label for="MUemail" class="text-uppercase">Email</label>
                            <asp:TextBox ID="MUemail" runat="server" CssClass="form-control w-100 mx-2" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-lg-6 d-flex align-items-center">
                            <label for="txtpass" class="text-uppercase">Password</label>
                            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control w-100 mx-2"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                </div>
                <br />
                <div align="right" class="text-uppercase">
              <%--  <button type="submit" class="btn btn-success mt-2 px-4">Save</button>--%>
                <asp:Button ID="MUsave" runat="server" Text="Save" CssClass="btn btn-success mt-2 px-4" OnClick="MUsave_Click" />
                <%--<button type="submit" class="btn btn-danger mt-2 px-4">Cancel</button>--%>
                <asp:Button ID="MUupdate" runat="server" Text="Update" CssClass="btn btn-success mt-2 px-4" OnClick="MUupdate_Click" />
                <asp:Button ID="MUdelete" runat="server" Text="Delete" CssClass="btn btn-danger mt-2 px-4" OnClientClick="return confirm('Are You Sure You Want To Delete, This Action Cannot Be Undone')" OnClick="MUdelete_Click" />
                <asp:Button ID="MUcancel" runat="server" Text="Cancel" CssClass="btn btn-danger mt-2 px-4" OnClick="MUcancel_Click" />
            </div>

             <br />

             <div class="gridContainer">
             <asp:GridView CssClass="Grid" ID="Grid" runat="server" CellPadding="30" ForeColor="#333333" GridLines="None" Height="148px" Width="100%" SelectedRowStyle-BackColor="#6666FF" CellSpacing="10" Font-Size="Medium" HorizontalAlign="Center" AutoGenerateSelectButton="True" DataKeyNames="UserID" OnSelectedIndexChanged="Grid_SelectedIndexChanged">
             <AlternatingRowStyle BackColor="White" />
               <Columns>
               </Columns>
               <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#990f02" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="White"/>
               <SelectedRowStyle BackColor="#bc544b" Font-Bold="True" ForeColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1"/>
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />
           </asp:GridView>
       </div>

            </form>

        </div>
    </div>
</div>
</body>
        <style>
        .Grid {
            text-align: center;
            margin-bottom: 30px;
            margin-top:20px;
        }

        .gridContainer {
            width: 100%;
            height: 400px;
            overflow: scroll;
        }

        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        ::-webkit-scrollbar-thumb {
            background: #888;
            border-radius: 4px;
        }
    </style>
</html>
