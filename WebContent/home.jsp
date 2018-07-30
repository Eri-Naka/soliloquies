<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/profile.css">
<!-- <link rel="stylesheet" href="./css/input.css"> -->
<link rel="stylesheet" href="./css/home.css">
<title>soliloquies</title>
</head>
<body>
	<jsp:include page="header.jsp" />
<div style="cleaer:both;"></div>
	<div class="main">

		<div class="content left">
		<jsp:include page="profile.jsp" /></div>

		<div class="content center">
			<jsp:include page="tweetField.jsp" />
			<div class="tweetView_box">
				<jsp:include page="tweetView.jsp" />
			</div>

		</div>



	</div>

</body>
</html>