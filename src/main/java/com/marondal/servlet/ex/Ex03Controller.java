package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/Ex03")
public class Ex03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
		
		//이름과 나이 정보만 전달
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out= response.getWriter();
		
		
		// 이름과 생년월일을 전달 받는다 
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2025 - year + 1;
		
		
		//김인규, 31
		// 데이터를 전달하기 위한 문자열 규격 : JSON(javascript Object Notation)
		// {"name" : "오인웅" , "age" : 24}
		// ["오인융", "김인큐", "유재석"]
		
		
		out.println("{\"name\":" + name + ", \"age\" :" + age + "}");
		
		
//		out.println(""
//				+ "<html>\n"
//				+ "	<head><title>정보</title><head>\n"
//				+ " <body>\n"
//				+ "		<h3>이름 : " + name + "</h3>\n"
//				+ "		<h3>나이 : " + age + "</h3>\n"
//				+ "	</body>\n"
//				+"</html>");
	}

}
