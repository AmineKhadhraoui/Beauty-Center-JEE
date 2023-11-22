<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.containerr {
  margin-left: 250px !important;
  width: 80vw !important;
}


.containerr .contentt .cardss .cardd .icon-case img {
  width: 50px !important;
  height: 50px !important;
  margin-bottom:100px
}

.containerr .contentt {
  position: relative !important;
  margin-top: 130px !important;
  min-height: 90vh !important;
}

.containerr .contentt .cardss {
  padding: 20px 15px !important;
  display: flex !important;
  align-items: center !important;
  justify-content: space-between !important;
  flex-wrap: wrap !important;
}

.containerr .contentt .cardss .cardd {
  width: 250px !important;
  height: 150px !important;
  background: white !important;
  margin: 20px 10px !important;
  display: flex !important;
  align-items: center !important;
  justify-content: space-around !important;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2) !important;
}
.containerr .contentt .cardss .cardd .box h1 {
  font-weight: bold;
  color: #fcac98;
}

.containerr .contentt .cardss .cardd .box h3 {
  font-weight: normal;
  font-size: smaller;
  font-family: "Roboto", sans-serif;;
}
</style>

    <title>Admin Panel</title>
</head>


   
    <div class="containerr">
        
        <div class="contentt">
            <div class="cardss">
                <div class="cardd">
                    <div class="box">
                        <h1>2194</h1>
                        <h3>Clients</h3>
                    </div>
                    <div class="icon-case">
                        <img src="img/shopping-cart.png" alt="">
                    </div>
                </div>

                <div class="cardd">
                    <div class="box">
                        <h1><%= request.getAttribute("ContactCount") %></h1>
                        <h3>contacts</h3>
                    </div>
                    <div class="icon-case">
                        <img src="img/business.png" alt="">
                    </div>
                </div>
                <div class="cardd">
                    <div class="box">
                        <h1><%= request.getAttribute("userCount") %></h1>
                        <h3>Users</h3>
                    </div>
                    <div class="icon-case">
                        <img src="img/team.png" alt="">
                    </div>
                </div>
                <div class="cardd">
                    <div class="box">
                        <h1><%= request.getAttribute("ReclamationCount") %></h1>
                        <h3>Reclamations</h3>
                    </div>
                    <div class="icon-case">
                        <img src="img/meeting.png" alt="">
                    </div>
                </div>
                <div class="cardd">
                    <div class="box">
                        <h1>350000</h1>
                        <h3>Income</h3>
                    </div>
                    <div class="icon-case">
                        <img src="img/finance.png" alt="">
                    </div>
                </div>
                <div class="cardd">
                  <div class="box">
                      <h1>30</h1>
                      <h3>Brands</h3>
                  </div>
                  <div class="icon-case">
                      <img src="img/brand-image.png" alt="">
                  </div>
              </div>
              <div class="cardd">
                <div class="box">
                    <h1>156</h1>
                    <h3>Products</h3>
                </div>
                <div class="icon-case">
                    <img src="img/makeup-pouch.png" alt="">
                </div>
            </div>
            </div>
            
                
                </div>
            </div>
       

