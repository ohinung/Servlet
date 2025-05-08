<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>


	<div class = "container">
		<form method = "post" action =/jsp/test/test07/test07-Answer.jsp>
			<h3>메뉴검색</h3>
			
			<div class = "d-flex">
			
			
			<input type = "text" name = "menu" class = "form-control my-2 ">
			<label><input type = "checkbox" name = "point" class ="" value = "great" >4점이하제외</label>
			
			</div>
			
			<button type = submit class= "btn btn-success">검색</button>
	
		</form>
	</div>

</body>
</html>