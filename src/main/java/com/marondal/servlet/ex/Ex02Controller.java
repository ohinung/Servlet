package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Ex02")
public class Ex02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//1~10까지의 합을 보여주는 html 문서
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		int sum = 0;
		for(int i = 1; i <=10; i++) {
			sum += i;
		}
		
		out.println(""
				+ "<html>\n"
				+ "	<head><title>합계</title></head>\n"
				+ "	<body>\n"
				+ "		<h2> 합계: " + sum + "</h2>\n"
				+ "	</body>\n"
				+ "</html>");
	}

}
