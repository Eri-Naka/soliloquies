<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/followView.css">

<title>soliloquies</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<div class="followView_contents">
		<p>Follow List</p>

		<div class="followView_box">
			<ul>
				<s:iterator value="%{#session.follows}">
					<li class="contents_field">
						<ul>

							<li class="user_img"><img
								src="<s:property value='%{photoPath}' />" /></li>
							<!-- ユーザー名 -->
							<li class="contents_box"><div class="user_link"><a
								href="<s:url action='HomeAction'>
							<s:param name='userId' value='%{id}' />
						</s:url>">

									<s:property value="%{name}" />

							</a></div>
								<div class="unfollw_btn">
									<a
										href="<s:url action='DefollowAction'>
							<s:param name='userId' value='%{id}' />
						</s:url>">

										Unfollow </a>
								</div></li>
						</ul>
				</s:iterator>
			</ul>
		</div>
	</div>
</body>
</html>