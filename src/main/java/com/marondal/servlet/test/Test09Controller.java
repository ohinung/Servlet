package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Test09")
public class Test09Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response ) throws IOException {
		
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		

		
		out.println(""
				+ "<html>"
				+ "	<head><title>입사지원</title></head>"
				+ "	<body>"
				+ "		<h3>" + name + "님 지원이 완료되었습니다.</h3>"
				+ "		<hr>"
				+ "		<div>지원 내용</div>"
				+ "		<div>" + introduce + "</div>"
				+ "	</body>"
				+ "</html>"
				);
	}

}
