<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
</head>
<body>
	<form id="form1" name="form1" method="post" action="修改密码判定.jsp">
	    <h1>密码不得为空</h1>
		<p>
			请输入新密码： <label for="textfield2"></label> <input type="text"
				name="user_newcode1" id="textfield2" />
		</p>
		<p>
			再次输入新密码： <label for="textfield3"></label> <input type="text"
				name="user_newcode2" id="textfield3" />
		</p>
		<p align="right">
			<input type="submit" name="button" id="button" value="提交" />
		</p>
	</form>
</body>
</html>