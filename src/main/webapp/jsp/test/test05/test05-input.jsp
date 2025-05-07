<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.List" %>
    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test05</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

<form method = "post" action = /jsp/test/test05/test05.jsp>

<div>
	<h4>길이변환</h4>
	<input type = "text" name = "cm" class ="d-block form-control my-2">
	
	<div class ="my-2">
	<label class = mx-2>인치<input type = "checkbox" name ="unit"value ="inch"> </label>
	<label class = mx-2>야드<input type = "checkbox"name ="unit"value ="yard"> </label>
	<label class = mx-2>피트<input type = "checkbox"name ="unit"value ="feat"> </label>
	<label class = mx-2>미터<input type = "checkbox"name ="unit"value ="meter"> </label>
	</div>
	
	<button type="submit" class = "btn btn-success">변환</button>


</div>
</form>
</body>
</html>