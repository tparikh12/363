package test;

import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateTable {
	private static Connection connect = null;
	public static void main(String[] args) throws SQLException
	{
		try {
			String userName ="coms363";
			String password="password";
			String dbSever="jdbc:mysql://localhost:3306/project1";
			connect = DriverManager.getConnection(dbSever,userName,password);
			
		}
		catch(Exception e) {
			
		}
		
		Statement stmt = null;
		try {
			stmt=connect.createStatement();
			
			stmt.addBatch("CREATE TABLE students (\r\n" + 
			"snum INT, \r\n" +
			"ssn INT, \r\n" +
			"name VARCHAR(10), \r\n" +
			"gender VARCHAR(1), \r\n" +
			"dob DATE,\r\n" +
			"c_addr VARCHAR(20),\r\n" +
			"c_phone VARCHAR(20),\r\n" +
			"p_addr VARCHAR(20),\r\n" +
			"p_phone VARCHAR(10),\r\n" +
			"PRIMARY KEY(ssn),\r\n" +
			"UNIQUE(snum)\r\n" +
			");"
			);
	
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		String command = "CREATE TABLE departments(code INT NOT NULL," +
		"name varchar(50) NOT NULL UNIQUE," +
		"phone varchar(10)," +
		"college varchar(20)," +
		"PRIMARY KEY (code)" +
		//"UNIQUE(name)" +
		")";
		stmt.executeUpdate(command);
	
		
		String table2 = "CREATE TABLE degrees(name varchar(50) NOT NULL," +
				 "level varchar(5) NOT NULL," +
				 "department_code INT NOT NULL," +
				 "PRIMARY KEY (name, level)," +
				" FOREIGN KEY (department_code) REFERENCES departments(code)" +
				");";
		stmt.executeUpdate(table2);
	
		String table3 = "CREATE TABLE courses (\n" + 
				"  number INT NOT NULL,\n" + 
				"  name VARCHAR(50) NOT NULL,\n" + 
				"  description VARCHAR(50) NOT NULL,\n" + 
				"  credithours INT NOT NULL,\n" + 
				"  level VARCHAR(20) NOT NULL,\n" + 
				" department_code INT NOT NULL,\n" + 
				"  PRIMARY KEY (number),\n" + 
				"   FOREIGN KEY (department_code) REFERENCES departments(code),\n" + 
				"  UNIQUE(number)" +
				");";
				
		stmt.executeUpdate(table3);
		
		String table4 = ("CREATE TABLE register (\n" + 
				"  snum INT NOT NULL,\n" + 
				"  course_number INT NOT NULL,\n" + 
				"  regtime VARCHAR(20) NOT NULL,\n" + 
				"  grade INT NOT NULL,\n" + 
				"  PRIMARY KEY (snum, course_number),\n" + 
				"  FOREIGN KEY (snum) REFERENCES students(snum),\n" + 
				"  FOREIGN KEY (course_number) REFERENCES courses(number)\n" + 
				"  );");
		stmt.executeUpdate(table4);
		
		
		String table5 = ("CREATE TABLE major(\n" + 
				" snum INT NOT NULL,\n" + 
				" name varchar(50) NOT NULL,\n" + 
				" level varchar(5) NOT NULL,\n" + 
				"PRIMARY KEY (snum,name,level),\n" + 
				"FOREIGN KEY (snum) REFERENCES students(snum),\n" + 
				"FOREIGN KEY (name,level) REFERENCES degrees(name,level)" +
				");");
		stmt.executeUpdate(table5);
	
		
		String table6 = ("CREATE TABLE minor(\n" + 
				" snum  INT NOT NULL,\n" + 
				" name  varchar(50) NOT NULL,\n" + 
				" level varchar(5) NOT NULL,\n" + 
				"PRIMARY KEY (snum,name,level),\n" + 
				"FOREIGN KEY (snum) REFERENCES students(snum),\n" + 
				"FOREIGN KEY (name,level) REFERENCES degrees(name,level)" +
				");");
		stmt.executeUpdate(table6);
		try {
			stmt.executeBatch();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				if(stmt !=null) {
					stmt.close();
				}
				if(connect !=null) {
					connect.close();
				}
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
