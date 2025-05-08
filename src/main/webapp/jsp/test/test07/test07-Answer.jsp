<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바제어문 사용하기</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

	<div class = "container ">
	
	<%
	
		//가맹점 리스트를 기반으로, 메뉴 명을 입력 받고 해당하는 가게 리스트를 보여주는 기능을 만드세요.
		//전달 받은 메뉴명에 맞는 가맹점의 리스트를 아래와 같이 보여주세요
		
		List<Map<String, Object>> list = new ArrayList<>();
		    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
		    list.add(map);
		
		    
		    String menuString = request.getParameter("menu");
		    
		    String pointValue = request.getParameter("point");
		    
		    
		    
	
	
	%>
		<h2 class = "display-4 d-flex justify-content-center">검색 결과</h2>
		
		
		
		<table border ="1" class ="table  justify-content-center text-center" >
			<thead>
				<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
				</tr>
			</thead>
			<tbody>
			
					<%	for(Map<String, Object> listMap : list) {
						//**********다운 캐스팅************
						String menu= (String)listMap.get("menu");
						//**********다운캐스팅*************
						if(menu.equals(menuString)){
					%>
						<tr>
								<td><%= listMap.get("menu")%></td>
								<td><%= listMap.get("name")%></td>
								<td><%= listMap.get("point")%></td>		
						</tr>
					<% } %>
					
				<% } %>
		
		
			</tbody>	
		</table>
	
	
	
	
	</div>

</body>
</html>