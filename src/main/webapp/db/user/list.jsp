<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.marondal.common.MySQLService" %>
<%@ page import = "java.sql.ResultSet" %>
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
		ResultSet resultSet = mysqlService.select("SELECT * FROM `user`");
		
		
		
	
	%>
	
	<table border = "1">
		<thead>
			<tr>
				<th>이름 </th>
				<th>이메일</th>
				<th>자기소개</th>
			 </tr>
			
		</thead>
		<tbody> 
			<% while(resultSet.next()){%>
			
			
			
			
			
			<tr>
				<td><%= resultSet.getString("name")%></td>
				<td><%=resultSet.getString("email")%></td>
				<td><%=resultSet.getString("introduce")%></td>
			
			</tr>
			<%}		%>
			
		</tbody> 
	
	
	
	</table>

</body>
</html>