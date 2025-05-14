package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MySQLService {
	
	Connection connection;
	
	
	//클래스를 설계한 입장에서 해당
	//static 메소드: 객체 생성없이 생성 가능한 메소드
	
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
	
	
	public List<Map<String,Object>> select(String query) {
		
		try {
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery(query);
			//이 안에서 일어나는 일을 모르게 하기 위해서 resultset을 최대한 숨겨줘야지!!
			// resultset을 어떻게 숨길까 - 자바에서 데이터를 저장할 수 있는 무언가를 이용해 어디서든 활용할 수 있도록~~
			
			// statement 객체의 종료가 필요하기 때문에 하는 것임.
			
			
			//조회 결과의 칼럼 목록
			ResultSetMetaData rsmd =resultSet.getMetaData();
			int columnCount= rsmd.getColumnCount(); 
			
			//컬럼이름 리스트 
			List<String> columnList = new ArrayList<>();
			for(int i = 1; i < columnCount; i++) {
				columnList.add(rsmd.getColumnName(i));
			}
			
			List<Map<String,Object>> resultList = new ArrayList<>();
			//한 행이 결국 맵이 되겠죠??
			while(resultSet.next()) {
				Map<String, Object> row = new HashMap<>();
				// 하나의 행에서 컬럼이름으로 모든 값 얻어오기
				for(String column : columnList) {
					Object value = resultSet.getObject(column);
					
					row.put(column,value);
				}
//				String name = resultSet.getString("name");
//				String email = resultSet.getString("email");
//				String introduce = resultSet.getString("introduce");
//				
//				
//				row.put("name", name);
//				row.put("email", email);
//				row.put("introduce", introduce);
				
				
				resultList.add(row);
				
				
			}
			//스테이트먼트 객체를 닫아주기 전에 자바만의 언어로 저장해두면 되겠따
			statement.close();
			return resultList;
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
