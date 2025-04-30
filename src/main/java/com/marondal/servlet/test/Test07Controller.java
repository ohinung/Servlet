package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Test07")
public class Test07Controller extends HttpServlet{
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response ) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		int price1 = Integer.parseInt(price);
		
		
		if(address.contains("서울시") && card.equals("신한카드")==false) {
			
			out.println(""
					+ "<html>\n"
					+ "	<head><title>주문하기</title></head>\n"
					+ "	<body>\n "
					+ "		<h3>"+ address +  "배달 준비중 </h3><br>\n"
					+ "		<hr>\n"
					+ " 	<h5> 결제금액 : " + price + "</h5>\n"
					+ "</body> \n"
					+ "</html>\n");
			
			
			
			
		}else if(card.equals("신한카드")) {
			out.println("<html>"
					+ "	<head><title>카드 오류</title></head>"
					+ "	<body>"
					+ "		<h3>결제불가 카드입니다.</h3>"
					+ "	</body>"
					+ "</html>");
		}else if(address.contains("서울시") == false){
			out.println("<html>"
					+ "	<head><title>주소입력 오류</title></head>"
					+ "	<body>"
					+ "		<h3>배달불가지역입니다.</h3>"
					+ "	</body>"
					+ "</html>");
		}
		
		
		
	}

}
