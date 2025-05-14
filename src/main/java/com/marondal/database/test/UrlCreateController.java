package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MySQLService;

@WebServlet("/db/url/create")
public class UrlCreateController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request , HttpServletResponse response) {
		
		
		try {
			MySQLService mysqlService = MySQLService.getInstance();
			mysqlService.connect();
			
			String name = request.getParameter("name");
			String url = request.getParameter("url");
			
			String query ="INSERT `url`\r\n"
					+ "(`name` , `url`)\r\n"
					+ "value\r\n"
					+ "('"+ name +"', '"+ url+"');";
			
		
			int count = mysqlService.update(query);
			response.sendRedirect("/db/url/list.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
}
