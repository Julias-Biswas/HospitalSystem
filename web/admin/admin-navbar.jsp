


<%@page import="com.entity.User"%>

<%
    User user1 = (User) session.getAttribute("adminObj");

%>

<!--  Import All Link (Bootstrap & Font awesome) Start  -->
<%@include file="link/all-files-links.jsp" %>
<!--  Import All Link (Bootstrap & Font awesome) End  -->

<!--  Admin NavBar After Sign In Start  -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success" style="width: 100%; top: 0px; left: 0px; position: fixed; z-index: 100;">
    <div class="container-fluid">
        <a class="navbar-brand" href="home"><i class="fa-solid fa-house-medical"></i> Medi Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="../home"> HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"> <!--<i class="fa-solid fa-user-doctor"></i>--> DOCTOR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"> <!--<i class="fa-solid fa-calendar-check"></i>--> PATIENT</a>
                </li>
            </ul>
            <a href="admin/profile" class="btn btn-warning text-white"><i class="fa-solid fa-circle-user"></i> <%= user1.getName()%></a> &nbsp;&nbsp;           
            <a data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-danger text-white"><i class="fa-solid fa-right-from-bracket"></i> Logout </a>
        </div>
    </div>
</nav>
<!--  Admin NavBar After Sign In End  -->


<!--  Admin Logout Modal Start  -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-primary">
        <h5 class="modal-title text-white" id="exampleModalLabel">Logout</h5>
        <button type="button" class="btn-close text-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
            <b>Do You Want to Logout?</b>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal"><i class="fa-solid fa-xmark"></i> No</button>
        <a href="../admin-logout" type="button" class="btn btn-danger"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
      </div>
    </div>
  </div>
</div>
<!--  Admin Logout Modal End  -->