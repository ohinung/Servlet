package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 결과물에 대한 정보 설정 
		// response Header(카페 메뉴정보 말하면 메뉴주는 것)
		// Character set: utf-8
		response.setCharacterEncoding("utf-8");
		// 데이터 타입. 확장자 떄문에 구별이 가능하다. 
		// MIME(데이터 타입 구분을 위해 정해진 문자열)
		response.setContentType("text/plain");
		
		
		// 결과물 
		// Response Body
		PrintWriter out = response.getWriter();
		out.println("servlet Response");
		
		// 현재 날짜 시간을 보여주는 페이지
		Date now = new Date();
		
		out.println(now);
		
		// Date 객체의 날짜시간정보를 원하는 규격의 날짜 시간 문자열로 만들기 
		// 2025년 4월 25일 16:54:11
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일 HH:mm:ss");
		
		String dateTimeString =  formatter.format(now);
		
		out.println(dateTimeString);
	}

}
