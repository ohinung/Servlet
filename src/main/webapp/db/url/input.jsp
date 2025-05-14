<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자용 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>
	<form method = "post" action = "/db/url/create">
		<h2> 즐겨찾기 추가</h2>
		
		<div>
			
			<label>사이트명</label><input type = "text" name = "name">
			
		</div>
		
		<div>
			
			<label>사이트주소</label><input type = "text" name = "url">
			
		</div>
		
		<button type = "submit" class = "btn btn-success" name = "url" >추가</button>

	</form>
</body>
</html>