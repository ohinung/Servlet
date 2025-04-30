package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test04Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		for(int i = 1; i <= 30; i++) {
			
		}
		
		
		
		out.println(""
				+"<html>"
				+"	<head><title>test04</title></head>\n"
				+"	<body>\n"
				+"		<ul>"
				);
		
	
			for(int i = 1; i <= 30; i++) {
				out.println("<li>" + i + "번째 리스트" + "</li>");
		}
		
		
		out.println(""
				+"<html>"
				+"	<head><title>test04</title></head>\n"
				+"	<body>\n"
				+"		<ul>"
				);
	}

}
