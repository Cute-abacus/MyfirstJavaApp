<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="entity.*" import="db.*" import="dao.*"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生登陆判定结果</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");%>

	<% 
String username,password;
username=request.getParameter("username");
 out.println("未找到用户"+"<br>");
%>
	<a href="学生登陆.jsp">确定</a>
</body>
</html>