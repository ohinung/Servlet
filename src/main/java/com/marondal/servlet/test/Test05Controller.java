package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Test05")
public class Test05Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html");
		 
		 PrintWriter out = response.getWriter();
		 
		 String number = request.getParameter("number");
		 int number1 = Integer.parseInt(number);
		 out.print(""
				 +"<html>\n"
				 +"	<head><title>구구단</title></head>\n"
				 +"	<body>\n"
				 +"		<ul>\n");
		 
		 for(int i = 1; i <= 9 ; i++) {
			 out.println("<li>" + number1 + " X " + i + " = " + number1 * i +"</li>\n");
		 }
		 
		 out.println("</ul>\n"
				 +"</body>\n"
				 +"</html>");
		 
		 
	}

}
