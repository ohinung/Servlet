<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.util.HashMap"%>;
<%@ page import ="java.util.Map"%>;
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

<% 
	int cm= Integer.parseInt(request.getParameter("cm"));


	
	
	
	
	
	//변환할 단위를 전달받는다.
	String[] unitArray = request.getParameterValues("unit");
	
	String result = "";
	for(int i = 0 ; i < unitArray.length;i++){
		if(unitArray[i].equals("inch")){
			double inch = cm / 2.54;
			result += inch + "in<br>";
		}else if(unitArray[i].equals("feat")){
			double feat = cm / 30.48;
			result += feat + "ft<br>";
		}else if(unitArray[i].equals("meter")){
			double meter = cm / 100.0;
			result += meter + "m<br>";
		}else{
			double yard = cm /91.44;
			result += yard + "yard<br>";
		}
	}
	

	

%>


<h2>변환결과</h2>
<br>
<h4><%=cm%> cm </h4>

<hr>


<h3> 
	<%=result %>
</h3>



</body>
</html>