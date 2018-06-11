<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>重设密码</title>
</head>
<body>
	<form id="form1" name="form1" method="post" action="servlet/changecodeServlet">
		<p align="center">
			请你重新设置密码： <label for="textfield2"></label> <input type="text"
				name="user_code1" id="textfield2" />
		</p>
		<p align="center">
			请再次确认你的密码： <label for="textfield4"></label> <input type="text"
				name="user_code2" id="textfield4" />
		</p>
		<label for="textfield3"></label>
		<p align="center">
			<label for="textfield"></label> <input type="submit" name="button"
				id="button" value="提交" />
		</p>
	</form>
	<p>&nbsp;</p>
</body>
</html>