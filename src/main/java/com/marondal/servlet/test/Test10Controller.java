package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test10Controller extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
				
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println(""
				+"<html>"
				+"	<head><title>로그인 과정</title></head>"
				
				);
		
		out.println(""
				+"<html>"
				+"	<head><title>로그인 과정</title></head>"
				
				)
		
;	}

}
