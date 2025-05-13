package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLService {
	
	Connection connection;
	
	//모듈화해서 손쉽게 활용하자
	
	//데이터 베이스 접속 기능
	public boolean connect() {
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		//접속 주소, 포트, 사용할 데이터베이스, 사용자 이름, 비밀번호
		
		String url = "jdbc:mysql://localhost:3306/inwoong";
		String username = "root";
		String password = "root";
		
		//접속을 완료하는 것을 변수에 넣어줌
		connection = DriverManager.getConnection(url,username,password);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
		
	}
	
	//조회 쿼리수행기능
	
	
	public ResultSet select(String query) {
		
		try {
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	//데이터베이스 접속 끊기
	
	public boolean disconnect() {
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
