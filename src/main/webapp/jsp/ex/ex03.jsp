<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	//nickname 을 전달 받고 그대로 보여준다.
	String nickname = request.getParameter("nickname");


	// 좋아하는 동물 하나를 전달받고 보여준다.
	// 고양이 강아지 사자 
	String animal = request.getParameter("animal");
	
	
	// 좋아하는 과일 하나를 전달 받고 보여준다.
	//바나나 딸기 복숭아
	String fruit= request.getParameter("fruit");
	
	
	String[] foodArray= request.getParameterValues("food");
	
	String foodString = "";
			
	for(int i = 0; i < foodArray.length;i++){
		foodString += foodArray[i] + " ";
	}

%>

	<h3><%= nickname %></h3>
	<h3><%= animal%></h3>
	<h3><%= fruit%></h3>
	<h3><%= foodString%></h3>
	
</body>
</html>