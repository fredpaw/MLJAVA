package org.lxh.mvcdemo.dbc;
import java.sql.*;
public class DatabaseConnection {
	private static final String DBDRIVER = "com.mysql.jdbc.Driver";
	private static final String DBURL = "jdbc:mysql://localhost:3306/javadata";
	private static final String DBUSER = "root";
	private static final String DBPASS = "";
	private Connection conn = null;
	public DatabaseConnection() throws Exception{
		try{
			Class.forName(DBDRIVER);
			this.conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
		}catch(Exception e){
			throw e;
		}
	}
	public Connection getConnection(){
		return this.conn;
	}
	public void close() throws Exception {
		if(this.conn != null){
			try{
				this.conn.close();
			}catch(Exception e){
				throw e;
			}
		}
	}
}