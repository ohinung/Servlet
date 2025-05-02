<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Arrays"%>
<%@ page import ="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>

<%-- 1 --%>
<% 
	int[] scores = {80, 90, 100, 95, 80}; 
	
	int sum = 0;
	for(int i = 0; i< scores.length;i++){
		sum += scores[i];
	}
	
	double average = (double)sum / scores.length;


%>

<h3>점수 평균은 <%= average%>입니다.</h3>


<%-- 2 --%>
<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); 

	int count = 0;
	for( String score: scoreList){
		if(score.equals("O")){
		count += 100/ scoreList.size(); 
	}
}
%>


<%-- 3 --%>

<%!
	public int sumAll(int number){
		int sum = 0;
		for(int i = 1; i <= number;i++){
			sum += i;
		}
		return sum;
	}



%>

<h3>1부터 50까지의 합은 <%= sumAll(50) %></h3>


<%-- 4 --%>

<% String birthday = "20010820";

	int year = Integer.parseInt(birthday.substring(0,4));

	int age = 2025 - year + 1;

%>



</body>
</html>