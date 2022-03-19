package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ModifyRecords {
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
			String tab1 ="UPDATE students \n" + 
					"SET name=\"Scott\"\n" + 
					"WHERE ssn =746897816 ";
			stmt.executeUpdate(tab1);
			String tab2= "UPDATE major\n" + 
					"SET name = \"Computer Science\"\n" + 
					"WHERE ssn =746897816 ";
			stmt.executeUpdate(tab2);
			String tab3 ="DELETE FROM register\n" + 
					"WHERE regtime =\"Spring2021\"";
			stmt.executeUpdate(tab3);
			
	
	}
	
	catch (SQLException e) {
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
	
