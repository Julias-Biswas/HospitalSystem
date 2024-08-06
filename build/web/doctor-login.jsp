<%-- 
    Document   : index
    Created on : 22 Jul, 2022, 12:27:36 PM
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Management - Doctor Login</title>

        <!--  Import All Link (Bootstrap & Font awesome) Start  -->
        <%@include file="link/all-files-links.jsp" %>
        <!--  Import All Link (Bootstrap & Font awesome) End  -->

        <style>
            body
            {
                background: url('bg-img/doctor-signin-bg-img.jpg');
                background-size: cover;
                background-attachment: fixed;
            }
            
            /*  Anchor Tag Design Start  */
            p a
            {
                text-decoration: none;
                color: #00cccc;
            }
            p a:hover
            {
                text-decoration: underline;
            }
            /*  Anchor Tag Design End  */

            /*  For Box Shadow Start  */
            .point-card
            {
                box-shadow: 0 0 10px 0 rgba(0, 0, 0, 1);
            }
            /*  For Box Shadow End  */

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
    <body style="background-color: #f0f1f2">

        <!--  Scroll Button Start  -->
        <i onclick="topFunction()" id="myBtn" title="Go to Top" class="fa-solid fa-angle-up"></i>
        <!--  Scroll Button End  -->

        <!--  NavBar File Start  -->
        <%@include file="navbar.jsp" %>
        <!--  NavBar File End  -->

        <!--  Sign In form Start  -->
        <main class="d-flex align-items-center mt-4" style="height: 80vh">
            <div class="container">
                <div class="row mt-2">
                    <div class="col-md-4 offset-md-4">
                        <div class="card mt-5 point-card">
                            <div class="card-header text-center bg-info text-white">
                                <span class="fa fa-user-doctor fa-3x mt-2"></span>
                                <h1>Doctor Login</h1>
                            </div>

                            <div class="card-body">
                                <form action="" method="POST">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address<span class="text-danger">*</span></label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password<span class="text-danger">*</span></label>
                                        <input type="password" class="form-control" id="exampleInputPassword1" required="">
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-info col-md-12 text-white">Sign In</button>
                                    </div>
                                    <p class="text-center mt-2"><a href="#">Forgot Password?</a></p>
                                    <!--<p class="text-center">New Doctor ? <a href="#">Sign Up</a></p>-->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--  Sign In form End  -->

        <br><br><br>

        <!--  For Footer Part Start  -->
        <div style="margin-top: 3px;">
            <%@include file="footer.jsp" %>
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
