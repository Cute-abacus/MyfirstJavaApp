<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
</head>
<body>
	<p>欢迎你，请输入以下信息注册：</p>
	<form id="form1" name="form1" method="post" action="servlet/registerServlet">
		<p align="center">
			身份证号： <label for="textfield3"></label> <input name="user_id"
				type="text" id="textfield3" />
		</p>
		<p align="center">
			性别： <label for="select"></label> <select name="user_sex" id="select">
				<option selected="selected">男</option>
				<option>女</option>
			</select>
		</p>
		<p align="center">
			用户名： <label for="textarea2"></label> <label for="textfield"></label>
			<input type="text" name="user_name" id="textfield" />
		</p>
		<p align="center">
			密码： <label for="textfield5"></label> <input type="text"
				name="user_code1" id="textfield5" />
		</p>
		<p align="center">
			再次输入密码： <label for="textfield6"></label> <input type="text"
				name="user_code2" id="textfield6" />
		</p>
		<p align="center">
			密保问题： <label for="select2"></label> <select name="user_question"
				id="select2">
				<option selected="selected">你初中班主任的名字？</option>
				<option>你喜欢的人的生日？</option>
				<option>你母亲的名字？</option>
				<option>你父亲的名字？</option>
				<option>你老板的名字？</option>
			</select>
		</p>
		<p align="center">
			答案： <label for="textfield8"></label> <input type="text"
				name="user_answer" id="textfield8" />
		</p>
		<p align="center">
			手机号： <label for="textfield7"></label> <input type="text"
				name="user_number" id="textfield7" />
		</p>
		<p>&nbsp;</p>
		<p align="center">
			<input type="submit" name="button" id="button" value="注册" />
		</p>
	</form>
	<p>&nbsp;</p>
</body>
</html>