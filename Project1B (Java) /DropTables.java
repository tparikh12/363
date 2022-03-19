package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DropTables {
	private static Connection connect = null;
	public static void main(String[] args) throws SQLException {
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
			String tab1 ="DROP TABLE degrees";
			stmt.executeUpdate(tab1);
			String tab2 ="DROP TABLE major";
			stmt.executeUpdate(tab2);
			String tab3 ="DROP TABLE minor";
			stmt.executeUpdate(tab3);
			String tab4 ="DROP TABLE register";
			stmt.executeUpdate(tab4);
			String tab5 ="DROP TABLE students";
			stmt.executeUpdate(tab5);
			String tab6 ="DROP TABLE  courses";
			stmt.executeUpdate(tab6);
			String tab7 = "DROP TABLE departments";
			stmt.executeUpdate(tab7);
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

	
	
