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

//두개의 수 사칙 연산 중 하나 

int number1 = Integer.parseInt(request.getParameter("number1"));
int number2 = Integer.parseInt(request.getParameter("number2"));


// +,-,X,÷
String operator = request.getParameter("operator");

	double result =0;
if(operator.equals("+")){
	result = number1 + number2;
}else if(operator.equals("-")){
	result = number1 - number2 ;
}else if(operator.equals("X")){
	result = number1 * number2;
}else {
	result = number1 /(double)number2;
}

%>

	<div class = "container">
		<h2>계산 결과</h2>
		<div class = "display-4"><%=number1 %> <%=operator %> <%=number2 %><span class = "text-primary"><%=result %></span></div>
	</div>

</body>
</html>