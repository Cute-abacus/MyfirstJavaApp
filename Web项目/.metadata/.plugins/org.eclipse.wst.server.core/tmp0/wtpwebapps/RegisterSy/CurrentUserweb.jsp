<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="entity.*" import="db.*" import="dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>普通用户界面</title>
</head>
<body>
    <% out.println("<script>confirm('登陆成功')</script>"); %>
	<hl>欢迎来到公共考试报名系统!</hl>
	<p>
		<a href="报名.jsp">报名</a><a href="#"></a>
	</p>
	<p>
		<a href="#">查询考试信息</a>
	</p>
	<p>
		<a href="../个人信息页面.jsp">个人中心</a>
	</p>
	<p>&nbsp;</p>
</body>
</html>