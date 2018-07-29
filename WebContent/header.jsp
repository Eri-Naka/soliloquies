<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<header>
	<div class="menu">

	<!-- ロゴ -->
			<div class="logo">
					<a href="HomeAction"><img src="images/logo.png"></a>
				</div>

		<ul>
			<!-- ホームボタン -->
			<li><div class="home menu-button">
					<a href="HomeAction"><img src="images/home_white.png"></a>
				</div></li>
			<!-- フォロワー -->
			<li><div class="follow menu-button">
					<a href="FollowViewAction"><img src="images/account_white.png"></a>
				</div></li>
		<!-- ログアウト -->
				<li><div class="logout menu-button">
						<a href="LogoutAction"><img src="images/run_white.png"></a>
					</div></li>
					<!-- 検索ボックス -->
					<li>
						<s:form action="SearchUserAction">
						<ul>
							<li><s:textfield class="search" name="keyword"
									placeholder="Search" /></li>
							<li><s:submit class="search_btn menu-button" type="image"
									src="images/search_white.png" /></li>

						</ul>
					</s:form>
					</li>
			</ul>

	</div>
</header>