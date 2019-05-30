<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
		request.setCharacterEncoding("utf-8");
	    String sid=request.getParameter("sid");
	    Class.forName("com.mysql.jdbc.Driver");
	    String s = "jdbc:mysql://localhost:3306/food?user=root&password=123456";
	    Connection conn = DriverManager.getConnection( s );
	    Statement stat = conn.createStatement();
	    String sql="delete from food_ad where id = '"+sid+"'";
	    int n=stat.executeUpdate(sql);
	    response.sendRedirect("gwc.jsp");
	    stat.close();
	    conn.close();
		
		%>
</body>
</html>