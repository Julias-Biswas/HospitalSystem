<%-- 
    Document   : index
    Created on : 22 Jul, 2022, 12:27:36 PM
    Author     : julia
--%>

<%@page import="com.entity.User"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page errorPage="error.jsp" %>--%>

<%
    User user = (User) session.getAttribute("adminObj");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Management - Index Page</title>

        <!--  Import All Link (Bootstrap & Font awesome) Start  -->
        <%@include file="link/all-files-links.jsp" %>
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
    <body>

        <!--  Scroll Button Start  -->
        <i onclick="topFunction()" id="myBtn" title="Go to Top" class="fa-solid fa-angle-up"></i>
        <!--  Scroll Button End  -->

        <!--  NavBar File Start  -->
        <%            if (user == null ? user == null : user.equals("null")) {
        %>
        <%@include file="navbar.jsp" %>
        <%        } else {
        %>
        <%@include file="admin/admin-navbar.jsp" %>
        <%            }
        %>
        <!--  NavBar File End  -->

        <!--  Slide Image Change Start  -->
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="top: 50px;">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="slide-img/slide-one.jpg" class="d-block w-100" alt="..." height="500">
                </div>
                <div class="carousel-item">
                    <img src="slide-img/slide-two.jpg" class="d-block w-100" alt="..." height="500">
                </div>
                <div class="carousel-item">
                    <img src="slide-img/slide-three.jpg" class="d-block w-100" alt="..." height="500">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!--  Slide Image Change Start  -->

        <!--  Key Features of Our Hospital Start  -->
        <div class="container p-3 mt-5">
            <p class="text-center fs-2 fw-bold">Key Features of Our Hospital</p>

            <div class="row">
                <div class="col-md-8 p-3">
                    <div class="row">
                        <div class="col-md-6 mb-2">
                            <div class="card point-card">
                                <div class="card-body">
                                    <p><b class="fs-5 text-success">100% Safe</b></p>
                                    <p>
                                        People often think about the benefits of treatments and ignore possible harms.
                                        But few treatments that work are 100% safe.People often don’t think about the
                                        harmful effects that treatments can have. For example, people often don’t think
                                        about the harmful effects of medicines.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-2">
                            <div class="card point-card">
                                <div class="card-body">
                                    <p><b class="fs-5 text-info">Clean Environment</b></p>
                                    <p>
                                        A clean environment is one that is void of any form of pollution and its effect.
                                        Hence it could be an environment that has clean air, clean water, and clean energy.
                                        Basically, it is a healthy and safe environment. Very commonly a clean environment
                                        is also considered as one that is tidy.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-2">
                            <div class="card point-card">
                                <div class="card-body">
                                    <p><b class="fs-5 text-warning">Friendly Doctors</b></p>
                                    <p>
                                        This is a medical staff who cares, and has a goal for you to recover!
                                        Don't miss out on this great opportunity! Call Dr. Gupta & Associates today! 
                                        This is a list of doctors and other medical professionals who have been 
                                        recommended as "Intact-Friendly" by their patients. 
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-2">
                            <div class="card point-card">
                                <div class="card-body">
                                    <p><b class="fs-5 text-primary">Medical Research</b></p>
                                    <p>
                                        The choice of study type is an important aspect of the design of medical studies.
                                        Basic medical research (otherwise known as experimental research) includes animal
                                        experiments, cell studies, biochemical,genetic and physiological investigations,
                                        and studies on the properties of drugs and materials.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-5">
                    <img src="img/jens-doctor-one.jpg" alt="Doctor Image" height="350" />
                </div>
            </div>
        </div>
        <!--  Key Features of Our Hospital End  -->

        <hr>

        <!--  Our Teams Start  -->
        <div class="container p-2">
            <p class="text-center fs-2 fw-bold mb-4">Our Doctors</p>

            <div class="row">
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/lady-doctor-one.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Samuani Simi (MBBS,Cal)</p>
                            <p class="fs-7 text-center">Dermatologists</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/jens-doctor-three.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Kousik Roy (MBBS,Cal)</p>
                            <p class="fs-7 text-center">Osteopaths</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/lady-doctor-two.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Nandini Biswas (MBBS, MD)</p>
                            <p class="fs-7 text-center">Physiatrists</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/jens-doctor-two.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Sourav Nandy (MBBS, Cal, MD)</p>
                            <p class="fs-7 text-center">Plastic Surgeons</p>
                        </div>
                    </div>
                </div>

                <!--  Copy and Paste Doctors Name and Works Start  -->
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/lady-doctor-one.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Samuani Simi (MBBS,Cal)</p>
                            <p class="fs-7 text-center">Dermatologists</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/lady-doctor-one.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Samuani Simi (MBBS,Cal)</p>
                            <p class="fs-7 text-center">Dermatologists</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/lady-doctor-one.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Samuani Simi (MBBS,Cal)</p>
                            <p class="fs-7 text-center">Dermatologists</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card point-card" style="height: 350px;">
                        <img src="img/lady-doctor-one.jpg" class="card-img-top" alt="..." style="height: 200px;">
                        <div class="card-body">
                            <p class="fw-bold fs-5 text-center">Dr. Samuani Simi (MBBS,Cal)</p>
                            <p class="fs-7 text-center">Dermatologists</p>
                        </div>
                    </div>
                </div>
                <!--  Copy and Paste Doctors Name and Works End  -->

            </div>

            <div class="container-fluid text-center mt-4">
                <a href="#" class="btn btn-info text-white"><i class="fa-solid fa-eye"></i> View All Doctors</a>
            </div>

        </div>
        <!--  Our Teams Start  -->

        <br><br>

        <!--  For Footer Part Start  -->
        <%@include file="footer.jsp" %>
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
