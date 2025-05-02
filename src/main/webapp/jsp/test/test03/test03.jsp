<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat;" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>
<div class = "container"> 

	<%
		Date now = new Date();
		
		SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일" );
		
		SimpleDateFormat timeFormatter = new SimpleDateFormat("현재시간 HH:mm:ss");
		
		String date = dateFormatter.format(now);
		String time = timeFormatter.format(now);
	
		//날짜와 시간 중 어떤 결과를 입력하고 싶은지 전달받는다.
		//time : 시간 date: 날짜
		//what이라는 파라미터를 통해 ~~
		
		String what = request.getParameter("what");
		
		
		String result = null;
		if(what.equals("time")){
			result = time; 
		}else{
			result = date;
		}
	%>
	
	<div class = "display-4"><%= result %></div>
	

</div>
</body>
</html>