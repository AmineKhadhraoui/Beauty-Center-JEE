<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SPA Center - Beauty & Spa HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</div>



    
    
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid bg-light d-none d-lg-block">
        <div class="row py-2 px-lg-5">
            <div class="col-lg-6 text-left mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center">
                    <small><i class="fa fa-phone-alt mr-2"></i>+216 24100568</small>
                    <small class="px-3">|</small>
                    <small><i class="fa fa-envelope mr-2"></i>aminaBeautyCenter@gmail.com</small>
                </div>
            </div>
            <div class="col-lg-6 text-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-primary px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-primary px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-primary px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-primary px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-primary pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand ml-lg-3">
                <h1 class="m-0 text-primary"><span class="text-dark">Amina </span>Beauty Center</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="index" class="nav-item nav-link">Home</a>
                    <a href="about" class="nav-item nav-link">About</a>
                    <a href="service" class="nav-item nav-link">Services</a>
                    <a href="price" class="nav-item nav-link">Pricing</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="appointment" class="dropdown-item active">Appointment</a>
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
    <!-- Navbar End -->


    <!-- Header Start -->
    <div class="jumbotron jumbotron-fluid bg-jumbotron" style="margin-bottom: 90px;">
        <div class="container text-center py-5">
            <h3 class="text-white display-3 mb-4">Appointment</h3>
           
        </div>
    </div>
    <!-- Header End -->


    <!-- Appointment Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row mx-0 justify-content-center text-center">
                <div class="col-lg-6">
                    <h6 class="d-inline-block bg-light text-primary text-uppercase py-1 px-2">Appointment</h6>
                    <h1 class="mb-5">Make An Appointment</h1>
                </div>
            </div>
            <div class="row justify-content-center bg-appointment mx-0">
                <div class="col-lg-6 py-5">
                    <div class="p-5 my-5" style="background: rgba(33, 30, 28, 0.7);">
                        <h1 class="text-white text-center mb-4">Make Appointment</h1>
                     <form action="appointment" method="POST" id="form">
  <div class="form-row">
    <div class="col-sm-6">
      <div class="form-group">
        <label for="name">Your Name</label>
        <input type="text" name="name"class="form-control bg-transparent p-4" placeholder=""  id="name" />
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-group">
        <label for="email">Your Email</label>
        <input type="email" name="email" class="form-control bg-transparent p-4" placeholder=""  id="email" />
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-sm-6">
      <div class="form-group">
        <label for="date">Select Date</label>
        <div class="date" id="date" data-target-input="nearest">
          <input type="text" name="date" class="form-control bg-transparent p-4 datetimepicker-input" placeholder="" data-target="#date" data-toggle="datetimepicker" id="date-input"/>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-group">
        <label for="time">Select Time</label>
        <div class="time" id="time" data-target-input="nearest">
          <input type="text" name="time" class="form-control bg-transparent p-4 datetimepicker-input" placeholder="" data-target="#time" data-toggle="datetimepicker" id="time-input"/>
        </div>
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-sm-6">
      <div class="form-group">
       
        <select class="custom-select bg-transparent px-4" style="height: 47px;" id="service" name="service" >
          <option selected>Select A Service</option>
          <option value="Body massage">Body massage </option>
          <option value="Stone Therapy">Stone Therapy</option>
          <option value="Facial Therapy">Facial Therapy</option>
          <option value="Skin care">Skin care</option>
          <option value="Nail care">Nail care</option>
        </select>
      </div>
    </div>
   
    <div class="col-sm-6">
      <button class="btn btn-primary btn-block" type="submit" id="app"  style="height: 47px;" name="submitform" >Make Appointment</button>
    </div>
  </div>
</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Appointment End -->


    <!-- Open Hours Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="img/opening.jpg" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 pt-5 pb-lg-5">
                    <div class="hours-text bg-light p-4 p-lg-5 my-lg-5">
                        <h6 class="d-inline-block text-white text-uppercase bg-primary py-1 px-2">Open Hours</h6>
                        <h1 class="mb-4">Best Relax And Spa Zone</h1>
                        <p>Our spa center offers a serene and peaceful atmosphere that allows you to escape the hustle and bustle of everyday life and unwind in tranquility. 
                        We offer a wide range of spa services, including massages, facials, body treatments, and more, all designed to help you rejuvenate your mind, body, and soul</p>
                        <ul class="list-inline">
                            <li class="h6 py-1"><i class="far fa-circle text-primary mr-3"></i>Mon to Fri : 9:00 AM - 7:00 PM</li>
                            <li class="h6 py-1"><i class="far fa-circle text-primary mr-3"></i>Saturday : 9:00 AM - 6:00 PM</li>
                            <li class="h6 py-1"><i class="far fa-circle text-primary mr-3"></i>Sunday : Closed</li>
                        </ul>
                        <a href="appointment" class="btn btn-primary mt-2">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Open Hours End -->


    <!-- Footer Start -->
    <div class="footer container-fluid position-relative bg-dark py-5" style="margin-top: 90px;">
        <div class="container pt-5">
            <div class="row">
                <div class="col-lg-6 pr-lg-5 mb-5">
                    <a href="index.html" class="navbar-brand">
                        <h1 class="mb-3 text-white"><span class="text-primary">Amina </span>Beauty Center</h1>
                    </a>
                    <p>Our skilled professionals use only the best products and techniques to ensure that you receive the highest level of service and care.
                     Whether you're looking for a quick escape or a full day of pampering, we've got you covered. Come and experience the ultimate in relaxation and wellness at Best Relax and Spa Zone.</p>
                    <p><i class="fa fa-map-marker-alt mr-2"></i>916 Rue Elbarakat, Zone Touristique, MAHDIA</p>
                    <p><i class="fa fa-phone-alt mr-2"></i>+216 24100568</p>
                    <p><i class="fa fa-envelope mr-2"></i>aminaBeautyCenter@gmail.com</p>
                    <div class="d-flex justify-content-start mt-4">
                        <a class="btn btn-lg btn-primary btn-lg-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-6 pl-lg-5">
                    <div class="row">
                        <div class="col-sm-6 mb-5">
                            <h5 class="text-white text-uppercase mb-4">Quick Links</h5>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-white-50 mb-2" href="index"><i class="fa fa-angle-right mr-2"></i>Home</a>
                                <a class="text-white-50 mb-2" href="about"><i class="fa fa-angle-right mr-2"></i>About Us</a>
                                <a class="text-white-50 mb-2" href="service"><i class="fa fa-angle-right mr-2"></i>Our Services</a>
                                <a class="text-white-50 mb-2" href="price"><i class="fa fa-angle-right mr-2"></i>Pricing Plan</a>
                                <a class="text-white-50" href="contact"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                            </div>
                        </div>
                        <div class="col-sm-6 mb-5">
                            <h5 class="text-white text-uppercase mb-4">Our Services</h5>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-white-50 mb-2" href="service"><i class="fa fa-angle-right mr-2"></i>Body Massage</a>
                                <a class="text-white-50 mb-2" href="service"><i class="fa fa-angle-right mr-2"></i>Stone Therapy</a>
                                <a class="text-white-50 mb-2" href="service"><i class="fa fa-angle-right mr-2"></i>Facial Therapy</a>
                                <a class="text-white-50 mb-2" href="service"><i class="fa fa-angle-right mr-2"></i>Skin Care</a>
                                <a class="text-white-50" href="service"><i class="fa fa-angle-right mr-2"></i>Nail Care</a>
                            </div>
                        </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-light border-top py-4" style="border-color: rgba(256, 256, 256, .15) !important;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-left mb-3 mb-md-0">
                    <p class="m-0 text-white">&copy; <a href="#">Amina Beauty Center</a>. All Rights Reserved.</p>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>

<style>
  /* Popup container */
  .popup {
     background-color:#f9a392 !important;
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
   color:white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    z-index: 9999;
  }

  /* Popup content */
  .popup-content {
    text-align: center;
  }

  /* Close button */
  .popup-close {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
  }
</style>

<div class="popup" id="addedpopup">
  <div class="popup-content">
    <h3>Appointment Added!</h3>
    <p>Appointment added successfully.</p>
    <span class="popup-close" onclick="closePopup()">&times;</span>
  </div>
</div>
<div class="popup" id="errorpopup">
  <div class="popup-content">
    <h3>An error accured!</h3>
    <p>Please check you raservation informations.</p>
    <span class="popup-close" onclick="closePopup()">&times;</span>
  </div>
</div>
<div class="popup" id="samedatepopup">
  <div class="popup-content">
    <h3>Can't add this date!</h3>
    <p>An appointment with the same date, time, and service already exists within a 30-minute gap.</p>
    <span class="popup-close" onclick="closePopup()">&times;</span>
  </div>
</div>
<div class="popup" id="oldpopup">
  <div class="popup-content">
    <h3>Can't add at this date!</h3>
    <p>Cannot add an appointment with a time that has already passed .</p>
    <span class="popup-close" onclick="closePopup()">&times;</span>
  </div>
</div>

<script>
function showPopup1() {
    console.log("showPopup1 called");
    var popupElement = document.getElementById("addedpopup");
    console.log("popupElement:", popupElement);
    console.log("popupElement style:", popupElement.style);
    if (popupElement) {
        popupElement.style.display = "block";
        console.log("Popup should be displayed now.");
    } else {
        console.log("Popup element not found.");
    }
}
function showPopup2() {
    console.log("showPopup2 called");
    var popupElement = document.getElementById("oldpopup");
    console.log("popupElement:", popupElement);
    console.log("popupElement style:", popupElement.style);
    if (popupElement) {
        popupElement.style.display = "block";
        console.log("Popup should be displayed now.");
    } else {
        console.log("Popup element not found.");
    }
}
function showPopup3() {
    console.log("showPopup3 called");
    var popupElement = document.getElementById("samedatepopup");
    console.log("popupElement:", popupElement);
    console.log("popupElement style:", popupElement.style);
    if (popupElement) {
        popupElement.style.display = "block";
        console.log("Popup should be displayed now.");
    } else {
        console.log("Popup element not found.");
    }
}



function showPopup4() {
    console.log("showPopup called");
    document.getElementById("errorpopup").style.display = "block";
}

function closePopup() {
    console.log("closePopup called");
    document.getElementById("addedpopup").style.display = "none";
    document.getElementById("errorpopup").style.display = "none";
    document.getElementById("oldpopup").style.display = "none";
    document.getElementById("samedatepopup").style.display = "none";
}

$(document).ready(function() {
	  $('#form').submit(function(e) {
	    e.preventDefault();

	    $.ajax({
	      url: 'appointment',
	      type: 'post',
	      data: $('#form').serialize(),

	      success: function(response) {
	        console.log(response);
	        var jsonResponse = JSON.parse(response);
	        if (jsonResponse.reservationStatus === 'success') {
	          showPopup1();
	        } else if (jsonResponse.reservationStatus === 'oldDate') {
	          showPopup2();
	        } else if (jsonResponse.reservationStatus === 'samedate') {
	          showPopup3();
	        }
	      },
	      error: function() {
	        console.log("AJAX request error");
	        showPopup4();
	      }
	    });
	  });
	});


</script>