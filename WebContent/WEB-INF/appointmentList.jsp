<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
 <link href="css/tabl.css" rel="stylesheet">
  <style>
      /* CSS for table */
.table-container {
  border-collapse: collapse;
  margin: 0 auto; /* Center the table horizontally */
  border: 2px solid #F9A392; /* Border color and thickness */
  font-family: Arial, sans-serif;
  
}

th, td {
  border: 1px solid #F9A392; /* Border color */
  padding: 8px;
  text-align: left;
}

th {
  background-color: #F9A392; /* Table head background color */
  color: white;
}

/* CSS for buttons */
 button  {
  display: inline-block;
  padding: 8px 12px;
  background-color: #F9A392; /* Button background color */
  color: white;
  text-decoration: none;
  border-radius: 4px;
}

button:hover {
  background-color: #c33b7a; /* Button background color on hover */
}

/* CSS for filter section */
.filter {
  height: 40px;
  background-color: #F9A392;
  margin-bottom: 20px;
}

/* CSS for popup button */
.popup-btn {
  display: block;
  width: 100px;
  padding: 8px 12px;
  background-color: #F9A392;
  color: white;
  text-decoration: none;
  border-radius: 4px;
  text-align: center;
  margin: 10px auto;
}

.popup-btn:hover {
  background-color: #c33b7a; /* Button background color on hover */
}
.btn-delete {
  display: inline-block;
  padding: 8px 12px;
  background-color: red; /* Change button background color to red */
  color: white;
  text-decoration: none;
  border-radius: 4px;
}

.btn-delete:hover {
  background-color: #8B0000; /* Button background color on hover */
}

      
    </style>
</head>
<body>

<br><br><br><br><br>
 <h2 style="text-align: center;">Appointments List</h2>
<br>
 <table class="table-container">



 <tr>

 <th>Id</th>
 <th>Name</th>
 <th>Email</th>
 <th>Date </th>
 <th>Time </th>
 <th>Service</th>
 <th>Update</th>
 <th>Delete</th>
 
 </tr>

 
  <c:forEach items="${listapp}" var="app">

  <tr>

 <td>${app.id}</td>
 <td>${app.name}</td>
 <td>${app.email}</td>
 <td>${app.date}</td>
 <td>${app.time}</td>
 <td>${app.getService()}</td>
 <td><button onclick="openPopup(${app.getId()})">UPDATE</button></td>
<td><a href="appointmentDelete?Id=${app.getId()}" class="btn-delete">DELETE</a></td>

 
 </tr>
 
</c:forEach>

 

 
 
 </table>
 </body>
 <script>
function openPopup(id) {
  // Open a new popup window with the update form
  window.open('appointmentupdate?id=' + id, 'Update Appointment', 'width=700,height=800');
 
}
</script>
</html>