<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="entity.*" import="db.*" import="dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改密保问题答案</title>
</head>
<body>
	<%
	User u=(User)session.getAttribute("user"); 
	String answer=u.getUser_answer();
	%>
	<form id="form1" name="form1" method="post" action="servlet/changeanswerServlet">
		<p>密保问题：<%=answer%></p>
		<p>
			请输入新的答案： <label for="textfield"></label> <input type="text"
				name="user_answer" id="textfield" />
		</p>
		<p align="right">
			<input type="submit" name="button" id="button" value="提交" />
		</p>
	</form>
</body>
</html>