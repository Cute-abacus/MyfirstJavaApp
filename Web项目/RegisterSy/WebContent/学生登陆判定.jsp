<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生登陆判定中</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");%>
	<%

if(request.getParameter("user_name")=="")
{
	out.println("<script>confirm('姓名不能为空')</script>");
	
	
} 
else if(request.getParameter("user_code")=="")
{
	out.println("<script>confirm('密码不能为空')</script>");
	
}
else 
{
	request.getRequestDispatcher("学生登陆判定结果.jsp").forward(request,response);
}
%>

	<a href="学生登陆.jsp">点击此处返回学生登陆界面</a>;

</body>
</html>