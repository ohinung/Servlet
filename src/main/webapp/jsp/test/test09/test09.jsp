<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종합문제1</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
<link rel = "stylesheet" href = "style.css">
</head>
<body>
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String category =request.getParameter("category");
    
%>

<div id = "wrap" >
	<header class = "d-flex justify-content-center align-items-center " >
	 	<h1 class = "text-danger">SK BroadBand IPTV</h1>
	</header>
	
	<nav class = "mainMenu bg-danger">
		<ul class = "nav nav-fill">
			<li class = "nav-item"><a href= "/jsp/test/test09/test09.jsp?cate" class="nav-link text-white">전체</a></li>
			<li class = "nav-item"><a href= "/jsp/test/test09/test09.jsp?category=지상파"class ="nav-link text-white">지상파</a></li>
			<li class = "nav-item"><a href= "/jsp/test/test09/test09.jsp?category=드라마"class ="nav-link text-white">드라마</a></li>
			<li class = "nav-item"><a href= "/jsp/test/test09/test09.jsp?category=예능"class ="nav-link text-white">예능</a></li>
			<li class = "nav-item"><a href= "/jsp/test/test09/test09.jsp?category=영화"class ="nav-link text-white">영화</a></li>
			<li class = "nav-item"><a href= "/jsp/test/test09/test09.jsp?category=스포츠"class ="nav-link text-white">스포츠</a></li>
		</ul>
	</nav>
	
	
	
	<section class = "contents">
		<table class = "table text-center"> 
			<thead>
				<tr>
					<th>채널</th>
					<th>채널명</th>
					<th>카테고리</th>
				</tr>
			</thead>
			<tbody>
			
				<% if(category != null){
					for(Map<String, String> item : list){
						if(item.get("category").equals(category)){%>
						<tr>
							<td><%= item.get("ch")%></td>
							<td><%= item.get("name")%></td>
							<td><%= item.get("category")%></td>
						</tr>
						
						<%} %>
				<%} %>
				<%}else{
						for(Map<String, String> item : list){%>
							<tr>
								<td><%= item.get("ch")%></td>
								<td><%= item.get("name")%></td>
								<td><%= item.get("category")%></td>
							</tr>
			
						<%} %>
					<%} %>
				
				
			</tbody>
		</table>
	</section>
	
	
	<footer class = " text-center">
		Copyright 2021.marondal All Rights Reserved
	</footer>



</div>

</body>
</html>