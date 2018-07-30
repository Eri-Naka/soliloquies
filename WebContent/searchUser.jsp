<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/input.css">
<link rel="stylesheet" href="./css/searchUser.css">
<title>soliloquies</title>
</head>
<body>

	<jsp:include page="header.jsp" />

	<div class="searchUser_contents">

		<p>User Search Results</p>
		<div class="searchUser_box">
			<ul>
				<s:iterator value="#session.search">
					<li class="contents_field">
						<ul>
							<li class="contents_box"><a
								href="<s:url action='HomeAction'>
							<s:param name='userId' value='id' />
						</s:url>">

									<s:property value="name" />

							</a></li>

						</ul>
				</s:iterator>
			</ul>
		</div>
	</div>

</body>
</html>