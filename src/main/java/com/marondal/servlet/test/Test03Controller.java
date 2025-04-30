package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Test03")
public class Test03Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		
		String dateString = formatter.format(now);
		
		out.println(""
				+"<html>\n"
				+"	<head><title></title></head>\n"
				+"	<body>\n"
				+"		<h1>[단독]고양이가 야옹해</h1>\n"
				+"		<br>\n"
				+"		<h4>기사 입력 시간: " + dateString + "<br>\n"
				+"		<hr>\n"
				+"		<p>끝</p>\n"
				+"	</body>\n"
				+"</html>");
	}
}
