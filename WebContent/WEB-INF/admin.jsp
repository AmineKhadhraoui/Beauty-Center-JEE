<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>SPA Center - Beauty & Spa HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
        <style>
.navbar-custom {
    background-color:rgba(252, 236, 237) !important;
      position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  
  z-index: 9999;
  
    }
    body {
 
}
    
    </style>

 <!-- Navbar Start -->
<header >
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5 navbar-custom" >
            <a href="index.html" class="navbar-brand ml-lg-3">
                <h1 class="m-0 text-primary"><span class="text-dark">Amina </span>Beauty Center</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="index" class="nav-item nav-link active">Home</a>
                    <a href="about" class="nav-item nav-link">About</a>
                    <a href="service" class="nav-item nav-link">Services</a>
                    <a href="price" class="nav-item nav-link">Pricing</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="appointment" class="dropdown-item">Appointment</a>
                            <a href="opening" class="dropdown-item">Open Hours</a>
                            <a href="team" class="dropdown-item">Our Team</a>
                            <a href="testimonial" class="dropdown-item">Testimonial</a>
                            <a href="Reclamation" class="dropdown-item">Reclamation</a>
                        </div>
                    </div>
                    <a href="contact" class="nav-item nav-link">Contact</a>
                </div>
                <a href="appointment" class="btn btn-primary d-none d-lg-block">Book Now</a>
            </div>
        </nav>
    </div>
    </header>
    <!-- Navbar End -->



</head>

<body  >
    <%@ include file="sidebarAdmin.jsp" %>
<div id="content-frame" class="contenu"></div> 



<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    


    <!-- Template Javascript -->
    <script src="js/main.js"></script>
 
    
<script>


$(document).ready(function() {
    
    function loadAppointmentList() {
        $("#content-frame").load("dashboard");
    }

    
    $(window).on('load', loadAppointmentList);
    $(window).on('beforeunload', loadAppointmentList);

    
    $("#appointmentlist-link").click(function(e) {
        e.preventDefault();
        $("#content-frame").load("appointmentlist");
    });
            $("#contactlist-link").click(function(e) {
                e.preventDefault();
                $("#content-frame").load("contactlist");
            });
           
            $("#reclamationlist-link").click(function(e) {
                e.preventDefault();
                $("#content-frame").load("reclamationlist");
            });
            
           
            
            $("#servicelist-link").click(function(e) {
                e.preventDefault();
                $("#content-frame").load("servicelist");
            });
            
            $("#dashboardlist-link").click(function(e) {
                e.preventDefault();
                $("#content-frame").load("dashboard");
            });
            
            $("#contactlist-link").click(function(e) {
                e.preventDefault();
                $("#content-frame").load("contactlist");
            });
            $("#users-link").click(function(e) {
                e.preventDefault();
                $("#content-frame").load("usersList");
            });
        });
    </script>
</body>
</html>