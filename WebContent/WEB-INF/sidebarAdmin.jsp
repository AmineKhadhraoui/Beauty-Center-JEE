<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


    <!-- Customized Bootstrap Stylesheet -->
  
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: sans-serif;
}

.container {
  height: 100%;
  width: 17%;
  position: fixed;
  background: #161616;
  z-index: 1;
  transition: transform 0.6s ease;
  transform: translateX(-100%);
  top: 84px;
}

.container .head {
  color: #fbfdce;
  font-size: 30px;
  font-weight: bold;
  padding: 30px;
  text-transform: uppercase;
  text-align: center;
  letter-spacing: 3px;
  background: linear-gradient(30deg, #fcc597, #fcac98);
}

ol {
  width: 100%;
  list-style: none;
}

ol li {
  display: block;
  width: 100%;
}

ol li a {
  color: #fbfdce;
  padding: 15px 10px;
  text-decoration: none;
  display: block;
  font-size: 20px;
  letter-spacing: 1px;
  position: relative;
  transition: 0.3s;
  overflow: hidden;
  text-transform: capitalize;
}

ol li a i {
  width: 70px;
  font-size: 25px;
  text-align: center;
  padding-left: 30px;
}

ol li:hover a {
  background: #030303;
  color: #fcac98;
  letter-spacing: 5px;
}




#times {
  
   position: absolute;
  right: -40px;
  top: 30px;
  font-size: 25px;
  border-radius: 3px;
  color: #fff;
  padding: 3px 8px;
  cursor: pointer;
  background: #fcc597;
}
#bars {
  
   position: absolute;
  right: -40px;
  top: 30px;
  font-size: 25px;
  border-radius: 3px;
  color: #fff;
  padding: 3px 8px;
  cursor: pointer;
  background: #fcc597;
  
}

#check:checked ~ .container {
  transform: translateX(0);
}

#check:checked ~ .container #bars {
  display: none;
}


}
section {
  min-height: 100vh;
  transition: 0.5s;
  filter: brightness(60%);
  
  }

img {
  width: 100%;
  margin-top: 100px;
  height: 400px;
}

#check:checked ~ section {
 
  filter: brightness(20%);
}

</style>
</head>
<body>

<input type="checkbox" name="" id="check">
<div class="container">
<label for="check">
<span class="fas fa-times" id="times"></span>
<span class="fas fa-bars" id="bars"></span>

</label>
<div class="head">menu</div>
<ol>
<li><a href="#"  id="dashboardlist-link"><i class="fas fa-qrcode"></i>dashboard</a></li>
<li><a href="#" id="users-link"><i class="fas fa-users"></i>users</a></li>
<li><a href="#" id="appointmentlist-link"><i class="fas fa-arrow-up"></i>Appointments</a></li>
<li><a href="#" id="contactlist-link"><i class="fas fa-envelope"></i>Contact</a></li>
<li><a href="#" id="reclamationlist-link"><i class="fas fa-info"></i>Reclamation</a></li>
<li><a href="#" id="servicelist-link"><i class="fas fa-info"></i>service</a></li>

</ol>

</div>

 </body>