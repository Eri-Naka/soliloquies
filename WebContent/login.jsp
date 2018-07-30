<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/input.css">
<link rel="stylesheet" href="./css/login.css">
<title>soliloquies</title>
</head>
<body>
	<p>Sign in to SOLILOQUIES</p>
	<s:form action="LoginAction">
		<ul class=list>
			<!-- ログインID入力フィールド -->
			<li><s:textfield class="textbox" name="loginId" placeholder="ID" /><br>
			</li>
			<!-- パスワード入力フィールド -->
			<li><s:password class="textbox" name="password"
					placeholder="Password" /><br></li>
			<!-- ログインのエラー -->
			<s:if test="%{#session.error.containsKey('login')}">
				<div class="error-message">
					<s:iterator value="%{#session.error.login}">
						<li><s:property /></li>
					</s:iterator>
				</div>
			</s:if>
			<!-- サブミットボタン -->
			<li>
				<div class="btn">
					<s:submit value="Sign up" class="submit_btn" />
				</div>
			</li>
			<!-- 新規登録へのリンク -->
			<li>
				<div class="link">
					<a href="SignupAction"> Sign up </a>
				</div>
			</li>
		</ul>
	</s:form>

</body>
</html>