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

 <%
 
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	
	
	int height1 = Integer.parseInt(height);
	
	int weight1 = Integer.parseInt(weight);
 	
 	double bmi = weight1 / ((height1 / 100.0) * (height1 / 100.0));
 	
 	
 	String state =null;
 		if(bmi >= 30.0){
 			state ="비만";
 	 	} else if(bmi >= 25.0){
 	 		state ="과체중";
 	 	}else if(bmi >= 18.5){
 	 		state ="정상";
 	 	}else {
 	 		state ="저체중";
 	 	};
 	
 	 	
 	 	
 	 	
 	
 	
 
  %>
  
  
  
  <div class = "container">
  	<h2>BMI 측정 결과 </h2>
  	<div class = "display-4"> 당신은 <span class = "text-info">정상</span>입니다.</div>
  	<div> BMI 수치 : <%= bmi %></div>
  	
  </div>
  

  


</body>
</html>