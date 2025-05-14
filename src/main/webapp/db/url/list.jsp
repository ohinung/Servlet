<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.marondal.common.MySQLService" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url 리스트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

	<% 
		MySQLService mysqlService = new MySQLService();
		
		mysqlService.connect();
		List<Map<String,Object>> urlList = mysqlService.select("SELECT * FROM `url`");
		mysqlService.disconnect();
	%>

	<table class = "table text-center">
		<thead>
			<tr>	
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		
		<tbody>
		<%for (Map<String, Object> url : urlList){ %>
			<tr>
				
				<td><%=url.get("name")%></td>
				<td><a href="<%=url.get("url")%>"><%=url.get("url")%></a></td>
				
			</tr>
			
		<%} %>
		</tbody>
	</table>


</body>
</html>