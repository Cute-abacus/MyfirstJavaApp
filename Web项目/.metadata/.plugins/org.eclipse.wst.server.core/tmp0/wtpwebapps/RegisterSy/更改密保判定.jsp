<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改中</title>
</head>
<body>
<body>
	<% request.setCharacterEncoding("utf-8");%>
	<%

if(request.getParameter("user_answer")=="")
{
	out.println("<script>confirm('新答案不能为空')</script>");
		
} 
%>
	<a href="更改密保问题答案.jsp">点击此处返回更改界面</a>;

	<!-- 调用Java函数更改密保问题 ，返回true,跳转到更改成功页面-->
</body>
</html>