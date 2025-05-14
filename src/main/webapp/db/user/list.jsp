<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.marondal.common.MySQLService" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트 </title>
</head>
<body>


	<%
		MySQLService mysqlService=new MySQLService();
	
		mysqlService.connect();
		List<Map<String, Object>> userList = mysqlService.select("SELECT * FROM `new user`");
		
		mysqlService.disconnect();
		
	
	%>
	<%=userList.toString() %>
	
	<table border = "1">
		<thead>
			<tr>
				<th>이름 </th>
				<th>이메일</th>
				<th>자기소개</th>
			 </tr>
			
		</thead>
		<tbody> 
			<% for(Map<String,Object> user: userList){
			
				// 목적은 특정 테이블의 컬럼네임을 적는 것이 아닌 어떤 테이블이라도 뽑아낼 수 있어야함.%>
			<tr>
				<td><%= user.get("name")%></td>
				<td><%= user.get("email")%></td>
				<td><%= user.get("introduce")%></td>
			
			</tr>
			<%}		%>
			
		</tbody> 
	
	
	
	</table>

</body>
</html>