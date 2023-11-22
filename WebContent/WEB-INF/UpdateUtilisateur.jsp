<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
form {
  display: flex;
  flex-direction: column;
  max-width: 600px;
  margin: 0 auto;
}

label {
  font-weight: bold;
  margin-top: 10px;
  font-size: 20px;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  padding: 10px;
  margin-bottom: 20px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  width: 100%;
}

button[type="submit"] {
  background-color: #F9A392;
  color: white;
  border: none;
  padding: 12px 24px;
  border-radius: 4px;
  cursor: pointer;
  margin-top: 20px;
  font-size: 16px;
}

button[type="submit"]:hover {
  background-color: #e83e8c;
}

input:focus {
  outline: none;
  border-color: #e83e8c;
  box-shadow: 0 0 5px #e83e8c;
}

h1 {
  font-size: 32px;
  margin-bottom: 30px;
}

body {
  background-color: #f5f5f5;
}

.container {
  margin: 100px auto;
  background-color: #fff;
  padding: 30px;
  border-radius: 6px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
</style>

</head>
<body>
<br><br><br><br>
<center><h1>Update User</h1><br>
<form method="post" action="UpdateUtilisateur">
        <input type="hidden" name="idUser" value="${param.idUser}" />
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${param.name}" /><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${param.email}" /><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${param.password}" /><br>
        
        <button type="submit">Update</button>
    </form>

</body>
</html>