<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>确定删除</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");%>
	<%

if(request.getParameter("delete")=="")
{
	out.println("<script>confirm('ID不能为空')</script>");	
}

else
	{request.getRequestDispatcher("删除成功.jsp").forward(request,response);}
%>

	<p>
		<a href="管理报名信息四级.jsp">点击此处返回管理四级界面</a>
	</p>
</body>
</html>