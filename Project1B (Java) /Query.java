package test;
import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class Query {
	private static Connection connect = null;
	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
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
			String tab1 = "SELECT snum, ssn FROM students WHERE name =\"Becky\" ;";
			stmt.executeQuery(tab1);
			ResultSet res = stmt.executeQuery(tab1);
			System.out.println(res.getString(tab1));
			
			String tab2 ="SELECT name, level FROM major WHERE ssn=\"123097834\"";
			stmt.executeQuery(tab2);
			ResultSet res1 = stmt.executeQuery(tab2);
			System.out.println(res1.getString(tab2));
			
			String tab3 =" SELECT name,level FROM major WHERE name=\"Computer Science\";\n";
			stmt.executeQuery(tab3);
			ResultSet res2 = stmt.executeQuery(tab3);
			System.out.println(res2.getString(tab3));
			String tab4 = "SELECT name FROM minor";
			stmt.executeQuery(tab4);
			ResultSet res3= stmt.executeQuery(tab4);
			System.out.println(res3.getString(tab4));
			
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
