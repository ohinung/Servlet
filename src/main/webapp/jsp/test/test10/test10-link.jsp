<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
<link rel = "stylesheet" href = "style.css">
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    
    String titleString = request.getParameter("title");
    
    
%>
	<div id = "wrap" >
	<header class = "d-flex" >
	 	<a href ="/jsp/test/test10/test10.jsp" class = "text-success fw-bolder mx-3 my-3 col-2 link-underline-light"><h1>Melong</h1></a>
	 	<div class =" d-flex align-items-center">
	 	<form method ="post" action = /jsp/test/test10/test10-link.jsp>
		 	<div class="input-group ">
			<input type="text" class="form-control" placeholder="검색어를 입력하세요" name = "title" aria-label="Recipient's username" aria-describedby="button-addon2">
			<button class="btn btn-primary" type="submit" id="button-addon2" name = "title">검색</button>
			</div>
	 	</form>
	 	</div>
	</header>
	
	<nav class = "mainMenu col-6">
		<ul class = "nav nav-fill">
			<li class = "nav-item"><a href="#"  class="nav-link text-black fw-bolder">멜롱차트</a></li>
			<li class = "nav-item"><a href="#"  class="nav-link text-black fw-bolder">최신음악</a></li>
			<li class = "nav-item"><a href="#"  class="nav-link text-black fw-bolder">장르음악</a></li>
			<li class = "nav-item"><a href="#"  class="nav-link text-black fw-bolder">멜롱DJ</a></li>
			<li class = "nav-item"><a href="#"  class="nav-link text-black fw-bolder">뮤직어워드</a></li>
			
		</ul>
	</nav>
	
	
	
	<section class = "contents">
		<h3 class = "fw-bolder">곡 정보</h3>
	
		<div class ="border border-success mb-3">
			<div class ="mx-3 d-flex my-3">
				<% for (Map<String, Object> music : musicList) { 
					if(titleString.equals(music.get("title")) || titleString.contains((String)music.get("title"))){%>
				<img alt = "artist-picture" src = <%=music.get("thumbnail") %> width = 250>
				<div class = "mx-3"><span class = "fw-bolder display-4"><%=music.get("title") %></span> <br><br>
					<span ><h3 class = "fw-bolder text-success"><%=music.get("singer") %><h3></h3></span><br>
					
					<span class = "text-secondary">
					 앨범   -  <%=music.get("album") %> <br>
					 재생시간    -  <%=music.get("time") %> <br>
					 작곡가   -  <%=music.get("composer") %> <br>
					 작사가   - <%=music.get("lyricist") %> <br></span></div>
					<%} %>
				<%} %>
				
			</div>
		</div>
		
		<table class = "table"> 
			<thead>
				<tr>
					<th><h3 class = "fw-bolder">가사</h3></th>
				</tr>
			</thead>
			<tbody>
			
				<tr>
					<td>가사 정보 없음</td>
				</tr>
					
					
					
				
				
				
			</tbody>
		</table>
	</section>
	
	
	<footer class = "">
		Copyright 2021.marondal All Rights Reserved
	</footer>

</body>
</html>