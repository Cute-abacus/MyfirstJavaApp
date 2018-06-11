<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试发布判定中</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");%>
	<%
if(request.getParameter("test_id")!=""
&&request.getParameter("test_name")!=""
&&request.getParameter("test_rstart")!=""
&&request.getParameter("test_rover")!=""
&&request.getParameter("test_pstart")!=""
&&request.getParameter("test_pover")!=""
&&request.getParameter("test_time")!="")
{
	request.getRequestDispatcher("确认发布考试页面.jsp").forward(request,response);
	
		
} 
else
{
	out.println("<script>confirm('有考试信息尚未完善！')</script>");	
};

%>
	<a href="管理员发布考试.jsp">点击此处返回发布考试信息界面</a>;
</body>
</html>