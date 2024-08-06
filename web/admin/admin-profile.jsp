<%-- 
    Document   : index
    Created on : 22 Jul, 2022, 12:27:36 PM
    Author     : julia
--%>

<%@page import="com.entity.User"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>

<%
    User user = (User) session.getAttribute("adminObj");

    if (user == null) {
        response.sendRedirect("../admin");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome - <%= user.getName()%></title>

        <!--  Import All Link (Bootstrap & Font awesome) Start  -->
        <%@include file="../admin/link/all-files-links.jsp" %>
        <!--  Import All Link (Bootstrap & Font awesome) End  -->

        <style>
            /*  For Box Shadow Start  */
            .point-card
            {
                box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
            }
            /*  For Box Shadow End  */

            /*  Card Hover Start  */
            .card
            {
                transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
                cursor: pointer;
            }
            .card:hover
            {
                transform: scale(1.05);
                box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
            }

            /*  For Responsive All Pages  */
            @media(max-width: 990px){
                .card{
                    margin: 20px;
                }
            }
            /*  Card Hover End  */

            /*  Scroll Button Design Start  */
            #myBtn 
            {
                display: none;
                position: fixed;
                bottom: 20px;
                right: 25px;
                z-index: 99;
                font-size: 24px;
                font-weight: 800;
                border: 0px solid #ebebfb;
                outline: none;
                color: #666666;
                cursor: pointer;
                padding: 15px;
                border-radius: 50%;
            }

            #myBtn:hover 
            {
                color: #000000;
            }
            /*  Scroll Button Design End  */

        </style>

    </head>
    <body style="background-color: #f1f2f3">

        <!--  Scroll Button Start  -->
        <i onclick="topFunction()" id="myBtn" title="Go to Top" class="fa-solid fa-angle-up"></i>
        <!--  Scroll Button End  -->

        <!--  NavBar File Start  -->
        <%@include file="admin-navbar.jsp" %>
        <!--  NavBar File End  -->


        <!--  Admin Profile All Card Details Start  -->
        <div class="container p-5">
            <p class="text-center fs-3 mt-4 fw-bold text-primary">Admin Dashboard</p>
            <div class="row mt-5">
                <div class="col-md-4 mb-3">
                    <div class="card point-card" style="width: 22rem;">
                        <div class="card-body text-center text-success">
                            <i class="fa-solid fa-user-doctor fa-3x"></i>
                            <p class="fs-4 fw-bold">Doctor</p>
                            <p class="fs-4">5</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card point-card" style="width: 22rem;">
                        <div class="card-body text-center text-info">
                            <i class="fa-solid fa-user fa-3x"></i>
                            <p class="fs-4 fw-bold">User</p>
                            <p class="fs-4">45</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card point-card" style="width: 22rem;">
                        <div class="card-body text-center text-danger">
                            <i class="fa-solid fa-calendar-check fa-3x"></i>
                            <p class="fs-4 fw-bold">Total Appointment</p>
                            <p class="fs-4">215</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card point-card" style="width: 22rem;">
                        <div class="card-body text-center text-warning">
                            <i class="fa-solid fa-star fa-3x"></i>
                            <p class="fs-4 fw-bold">Specialist</p>
                            <p class="fs-4">34</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card point-card" style="width: 22rem;">
                        <div class="card-body text-center text-primary">
                            <i class="fa-solid fa-calendar-day fa-3x"></i>
                            <p class="fs-4 fw-bold">Today Appointment</p>
                            <p class="fs-4">5</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  Admin Profile All Card Details End  -->


        <br><br>

        <!--  For Footer Part Start  -->
        <div style="margin-top: 70px;">
            <%@include file="../footer.jsp" %>
        </div>
        <!--  For Footer Part End  -->

        <!--  Go To Top in the Page Start  -->
        <script>
            //Get the button
            var mybutton = document.getElementById("myBtn");

            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function () {
                scrollFunction();
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    mybutton.style.display = "block";
                } else {
                    mybutton.style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
        <!--  Go To Top in the Page End  -->

        <!--  View Source Page Disable Start  --> 
        <SCRIPT language=JavaScript>

            <!-- http://www.spacegun.co.uk -->

            var message = "                                          We are Sorry!"
                    + "\n" + "                              View Page Source are Disable";

            function rtclickcheck(keyp) {
                if (navigator.appName === "Netscape" && keyp.which === 3) {
                    alert(message);
                    return false;
                }

                if (navigator.appVersion.indexOf("MSIE") !== -1 && event.button === 2) {
                    alert(message);
                    return false;
                }
            }

            document.onmousedown = rtclickcheck;

        </SCRIPT>
        <!--  View Source Page Disable End  --> 

    </body>
</html>
