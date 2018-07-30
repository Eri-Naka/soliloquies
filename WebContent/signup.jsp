<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/input.css">
<link rel="stylesheet" href="./css/signup.css">
<title>soliloquies</title>
</head>
<body>
<div class="contents">
	<p>Sing up</p>

		<s:form action="SignupConfirmAction">
			<ul class="list">
				<!-- ID -->
				<li>
					<dl>
						<dt>
							<s:textfield class="textbox" name="loginId" placeholder="ID" value="%{#session.signupDto.loginId}" />
						</dt>
						<!-- エラー表示 -->
						<s:if test="%{#session.error.containsKey('loginId')}">
						<div class="error-message">
							<s:iterator value="%{#session.error.loginId}">
								<dd>
									<s:property />
								</dd>
							</s:iterator>
							</div>
						</s:if>
					</dl>
				</li>
				<!-- パスワード -->
				<li>
					<dl>
						<dt>
							<s:textfield class="textbox" name="password" placeholder="Password" value="%{#session.signupDto.password}" />
						</dt>
						<!-- エラー表示 -->
						<s:if test="%{#session.error.containsKey('password')}">
						<div class="error-message">
							<s:iterator value="%{#session.error.password}">
								<dd>
									<s:property />
								</dd>
							</s:iterator>
							</div>
						</s:if>
					</dl>
				</li>
				<!-- 表示名 -->
				<li>
					<dl>
						<dt>
							<s:textfield class="textbox" name="name" placeholder="Name"
								value="%{#session.signupDto.name}" />
						</dt>
						<!-- エラー表示 -->
						<s:if test="%{#session.error.containsKey('name')}">
						<div class="error-message">
							<s:iterator value="%{#session.error.name}">
								<dd>
									<s:property />
								</dd>
							</s:iterator>
							</div>
						</s:if>
					</dl>
				</li>


				<!-- サブミットボタン -->
				<li>
				<div class="btn">
				<s:submit value="sing up" class="submit_btn" />
				</div>
				</li>

			</ul>

		</s:form>
	</div>
</body>
</html>