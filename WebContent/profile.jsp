<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="profile_box">
	<ul>
		<li class="profile_img"><img
			src="<s:property value='%{#session.profile.photoPath}' />" /></li>
		<li class="about_me"><a href='<s:url action="HomeAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>
	<s:property value="%{#session.profile.name}" />
</a></li>
		<li class="about_me2"><s:property value="%{#session.profile.introductions}" escape="false" /></li>

		<s:if test="%{!#session.isUser}">
			<s:if test="%{#session.isFollowing}">
				<!-- フォロー中なら -->
				<li><div class="btn"><a
					href='<s:url action="DefollowAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>
						Unfollow</a></div></li>
			</s:if>
			<s:else>
				<li><div class="btn"><a
					href='<s:url action="FollowAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>

						Follow up</a></div></li>
			</s:else>
		</s:if>
		<s:if test="%{#session.isUser}">
			<!-- ログイン中のユーザーなら -->
			<li><div class="btn"><a href="GoProfileEditAction">Edit Profile</a></div></li>
		</s:if>
	</ul>
</div>