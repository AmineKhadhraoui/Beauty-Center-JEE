<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/tabl.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
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
    <div class="main-grid">
        <div class="agile-grids">
            <div class="table-heading">
                <h2 style="text-align: center;">Users List</h2>
            </div>
            <div class="agile-tables">
                <div class="w3l-table-info">
                    <table id="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Opération</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${AllUsers}" var="m">
                                <tr>
                                    <td>${m.idUser}</td>
                                    <td>${m.name}</td>
                                    <td>${m.email}</td>
                                    <td>${m.password}</td>
                                    <td>
                                        <a href="UpdateUtilisateur?idUser=<c:out value='${m.idUser}'/>" class="btn">UPDATE</a>
                                        <a href="DeleteUtilisateur?idUser=<c:out value='${m.idUser}'/>" class="btn-delete" onclick="return confirm('Are you sure you want to delete this user?')">DELETE</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
    