package com.marondal.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MySQLService;

@WebServlet("/db/user/create")
public class UserCreateController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
//		response.setContentType("text/plain");
//		PrintWriter out =response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		MySQLService mysqlService = MySQLService.getInstance();
		mysqlService.connect();
		
		String query ="INSERT `new user`\r\n"
				+ "(`name` , `yyyymmdd`, `email`, `introduce`)\r\n"
				+ "value\r\n"
				+ "('"+ name +"', '"+ birthday +"','"+ email +"','"+ introduce +"')";
		
		
		int count = mysqlService.update(query);
		// 응답을 만들어내야해~~!! 짜치잖아!!
		//클라이언트야~~ 내가 너한테 줄 정보는 없고 , list.jsp에 다시 요청하면 조회결과를 다시 볼 수 있을거야
		//그러니까 list.jsp로 다시 요청해
		
		//이걸 가능하게 하는 것이 "redirect" : response에 새롭게 요청할 url path를 전달
		
		response.sendRedirect("/db/user/list.jsp");
		
		//respomse body에 넣을 정보도 없음
		
		
//		out.println("실행결과 : " + count);
		
		
}
}
