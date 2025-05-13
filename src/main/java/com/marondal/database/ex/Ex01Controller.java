package com.marondal.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/Ex01")
public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
	
      PrintWriter out = response.getWriter();
	
	
	
	
	try {
		//database 접속
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		
		
		
		
		//접속 주소, 포트, 사용할 데이터베이스, 사용자 이름, 비밀번호
		
		String url = "jdbc:mysql://localhost:3306/inwoong";
		String username = "root";
		String password = "root";
		
		
		
		
		Connection connection = DriverManager.getConnection(url,username,password);
		//쿼리작성
	
		String query = "SELECT * FROM `used_goods`";
				
				
		//쿼리 수행
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(query);
		
		
		
		
		
		while(resultSet.next()) {
			String title = resultSet.getString("title");
			int price = resultSet.getInt("price");
			String description= resultSet.getString("description");
			// 제목 : ~ 가격 : ~ 설명 : ~ 형태로 response에 넣어보자
			out.println("제목 : "+ title + "가격 : " + price + "설명 : " + description);
		
		}
		statement.close();
		
		
		// insert 
		query = " INSERT `used_goods`\r\n"
				+ "(`sellerId` , `title`, `price`, `description`)\r\n"
				+ "value\r\n"
				+ "(3,\"고양이 간식 팝니다.\", \"안녕하세요\")";
		
		statement = connection.createStatement();
		
		
		//INSERT, UPDATE, DELETE
		//실행된 행의 개수 
		int count = statement.executeUpdate(query);
		out.println("실행결과 : " + count);
		statement.close();
		connection.close();
		
		
		
		
	}
	catch(SQLException e) {
		e.printStackTrace();
	}}}

