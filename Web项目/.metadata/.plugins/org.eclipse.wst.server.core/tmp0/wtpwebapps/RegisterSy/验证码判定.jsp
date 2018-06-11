<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");%>
	<%
if(request.getParameter("passcode")=="")
{
	out.println("<script>confirm('验证码不能为空')</script>");
} 
else //else if(验证码不匹配) 重新输入
{
    
}
%>
	<a href="缴费.jsp">点此返回缴费页面</a>;
</body>
</html>