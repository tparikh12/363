<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.io.*,java.util.*,java.sql.*" %>
    <%@ page import="java.servlet.http.*,java.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public void ModifyRecords() 
{
	
		Connection connect = null;
	
		try {
			String userName ="coms100";
			String password="password";
			String dbSever="jdbc:mysql://localhost:3306/coms101";
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection(dbSever,userName,password);
			
		}
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		Statement stmt = null;
		try {
			stmt=connect.createStatement();
			String tab1 ="UPDATE students \n" + 
					"SET name=\"Scott\"\n" + 
					"WHERE ssn =746897816 ";
			stmt.executeUpdate(tab1);
		}
			catch (SQLException e) {
				e.printStackTrace();
			}
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

	%>
	<% 
	String ben = request.getParameter("coms363");

	if ("ModifyRecords".equals(ben)){
		ModifyRecords();
		response.sendRedirect("ModifyRecordsResult.jsp");
	}

%>
<p>Click "Submit" to modify records .</p>
<form method="post">
       <input type="submit" name ="coms363" value="ModifyRecords"/>
</form>
</body>
</html>