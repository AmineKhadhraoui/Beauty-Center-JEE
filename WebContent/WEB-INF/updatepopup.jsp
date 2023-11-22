<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Appointment</title>
 <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

   <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row mx-0 justify-content-center text-center">
                <div class="col-lg-6">
                    <h6 class="d-inline-block bg-light text-primary text-uppercase py-1 px-2">Appointment</h6>
                    <h1 class="mb-5">Update this Appointment</h1>
                </div>
            </div>
            <div class="row justify-content-center bg-appointment mx-0">
                <div class="col-lg-6 py-5">
                    <div class="p-5 my-5" style="background: rgba(33, 30, 28, 0.7);">
                        <h1 class="text-white text-center mb-4">Update Appointment</h1>
                        
                        
                        
<form action="appointmentupdate?id=${app.getId()}" method="POST" id="form">
                                          
  <div class="form-row">
    <div class="col-sm-6">
      <div class="form-group">
        <label for="name">Your Name</label>
        <input type="text" name="name"class="form-control bg-transparent p-4" placeholder="Your Name"  id="name" />
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-group">
        <label for="email">Your Email</label>
        <input type="email" name="email" class="form-control bg-transparent p-4" placeholder="Your Email"  id="email" />
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-sm-6">
      <div class="form-group">
        <label for="date">Select Date</label>
        <div class="date" id="date" data-target-input="nearest">
          <input type="text" name="date" class="form-control bg-transparent p-4 datetimepicker-input" placeholder="Select Date" data-target="#date" data-toggle="datetimepicker" id="date-input"/>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-group">
        <label for="time">Select Time</label>
        <div class="time" id="time" data-target-input="nearest">
          <input type="text" name="time" class="form-control bg-transparent p-4 datetimepicker-input" placeholder="Select Time" data-target="#time" data-toggle="datetimepicker" id="time-input"/>
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

 
  
  

</body>
</html>