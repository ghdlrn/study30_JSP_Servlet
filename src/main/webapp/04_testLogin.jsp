<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = "test";
	String pwd = "1234";
	String name = "홍길동";

	String id2 = request.getParameter("id");
	String pwd2 = request.getParameter("pwd");

	request.setCharacterEncoding("utf-8");
	if (id.equals(id2) && pwd.equals(pwd2)) {
		response.sendRedirect("04_main.jsp?name="+URLEncoder.encode(name, "utf-8"));
	} else {
		response.sendRedirect("04_loginForm.jsp");
	}
	%>
</body>
</html>