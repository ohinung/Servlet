<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 수치 </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

 <h3>체격 조건 입력</h3>
 
 

  
  <form method ="get" action="/jsp/test/test02/test02-1.jsp" >

	 <div class = "d-flex align-items-end ">
		 <div class = "mr-4 col-5">
			<input type = "text" placeholder = "키를 입력하세요" class = "form-contol " name = "height"> <label > cm</label>
		 </div>
		 <div class = "mr-4 col-5">
			<input type = "text" placeholder = "몸무게를 입력하세요" class = "form-contol " name = "weight"> <label > kg</label>
		 </div>
		 	<button type ="submit" class = "btn btn-primary "  >계산</button>
	 	
	</div>
	</form>

</body>
</html>