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

public void QueryRes2() 
{

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

//Statement stmt = null;

try {
	stmt=connect.createStatement();
	
	String tab3 =" SELECT name,level FROM major WHERE name=\"Computer Science\";\n";

	stmt.executeUpdate(tab1);
	rs = stmt.executeQuery(tab1);
	while(resultSet.next()){
	
	
		
		%>
		<tr>
		<td><b>name</b></td>
		<td><b>level</b></td>
		<td><%=resultSet.getString("name") %></td>
		<td><%=resultSet.getString("level") %></td>
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
	
	




%>
</body>
</html>