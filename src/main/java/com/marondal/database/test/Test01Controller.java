package com.marondal.database.test;

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

@WebServlet("/db/Test01")
public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		try {
			//database 접속 원래는 길지만 빠르게 라이브러리를 통해 확인
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			
			
			
			//접속 주소, 포트, 사용할 데이터베이스, 사용자 이름, 비밀번호
			
			String url = "jdbc:mysql://localhost:3306/inwoong";
			String username = "root";
			String password = "root";
			//접속을 완료하는 것을 변수에 넣어줌
			Connection connection = DriverManager.getConnection(url,username,password);
			//쿼리작성 쿼리는 그저 문자열에 불과
		
			
					
					
			//쿼리 수행
			
		
			
			// insert 
			String query = "INSERT `real-estate`\r\n"
					+ "(`realtorId` , `address`, `area`, `type`,`price`,`rentPrice`)\r\n"
					+ "value\r\n"
					+ "(3,\"헤라펠리스 101동 5303호\", \"350\",\"매매\",1500000, null)";
			
			Statement statement = connection.createStatement();
			
			
			
			//INSERT, UPDATE, DELETE
			//실행된 행의 개수 
			int count = statement.executeUpdate(query);
			//response 객체에 담아낸다.
			out.println("실행결과 : " + count);
			
			
			statement.close();
			connection.close();
			
			
			
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		}


		
	}


