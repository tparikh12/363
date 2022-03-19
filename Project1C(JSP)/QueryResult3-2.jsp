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
ResultSet resultSet = null;
Statement stmt = null;

Connection connect = null;

public void QueryRes3()

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
	
	String tab1 = "SELECT number, names FROM courses WHERE department_code = '401' OR '404 ;";	
	stmt.executeUpdate(tab1);
	resultSet = stmt.executeQuery(tab1);
while(resultSet.next()){
	
	
		
		%>
		<tr>
		<td><b>number</b></td>
		<td><b>name</b></td>
		<td><%=resultSet.getString("number") %></td>
		<td><%=resultSet.getString("name") %></td>
			</tr>
		<%
		

	
	
	
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
%>
</body>
</html>