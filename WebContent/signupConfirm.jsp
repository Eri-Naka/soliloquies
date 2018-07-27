<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/input.css">
<link rel="stylesheet" href="./css/sigunupConfirm.css">
<title>soliloquies</title>
</head>
<body>
	<p>sign up</p>
	<s:form action="SignupCompleteAction">
		<ul>
			<li>
				<!-- ログインID -->
				<p>Login ID</p>
			</li>
			<li><s:property value="%{#session.signupDto.loginId}" /></li>
			<li>
				<!-- パスワード -->
				<p>Password</p>
			</li>
			<li><s:property value="%{#session.signupDto.password}" /></li>
			<li>
				<!-- ユーザー名 -->
				<p>Name</p>
			</li>
			<li><s:property value="%{#session.signupDto.name}" /></li>

			<!-- サブミットボタン -->
			<li>
				<div class="btn">
					<s:submit value="Sign up" class="submit_btn" />
				</div>
			</li>
		</ul>
	</s:form>
</body>
</html>