<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact list</title>
<link href="css/tabl.css" rel="stylesheet">
<style>
    /* CSS for table */
        table {
            border-collapse: collapse;
            margin: 0 auto; /* Center the table horizontally */
            border: 2px solid #F9A392; /* Border color and thickness */
        }

        th, td {
            border: 1px solid #F9A392; /* Border color */
            padding: 8px;
        }

        th {
            background-color: #F9A392; /* Table head background color */
            color: white;
            text-align: center;
        }

        /* CSS for buttons */
        .btn {
            display: inline-block;
            padding: 8px 12px;
            background-color: #F9A392; /* Button background color */
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .btn:hover {
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
  background-color: #8B0000; /* Change button background color on hover to darker red */
}

  
</style>
</head>
<body>

<br><br><br><br><br>

<table class="table-container" >
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Subject</th>
    <th>Message</th>
    <th>Opération</th>
  </tr>
  <c:forEach items="${contactlist}" var="m">
                                <tr>
                                    <td>${m.id}</td>
                                    <td>${m.name}</td>
                                    <td>${m.email}</td>
                                    <td>${m.subject}</td>
                                    <td>${m.message}</td>
                                    <td>
                                 
                                        <a href="DeleteContact?id=<c:out value='${m.id}'/>" class="btn-delete" onclick="return confirm('Are you sure you want to delete this contact?')">DELETE</a>
        
                                    </td>
                                </tr>
                            </c:forEach>
</table>
</body>
</html>
