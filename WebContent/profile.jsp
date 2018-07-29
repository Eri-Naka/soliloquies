<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="profile_box">
	<ul>
		<li><img src="<s:property value='%{#session.profile.photoPath}' />" /></li>
		<li><s:property value="%{#session.profile.name}" /></li>
		<li><s:property value="%{#session.profile.introductions}" /></li>

		<s:if test="%{!#session.isUser}">
			<s:if test="%{#session.isFollowing}">	<!-- フォロー中なら -->
				<li>
					<a href='<s:url action="DefollowAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>
						フォロー解除
					</a>
				</li>
			</s:if>
			<s:else>
				<li>
					<a href='<s:url action="FollowAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>
						フォローする
					</a>
				</li>
			</s:else>
		</s:if>
		<s:if test="%{#session.isUser}">	<!-- ログイン中のユーザーなら -->
			<li>
				<a href="GoProfileEditAction">プロフィール編集</a>
			</li>
		</s:if>
	</ul>
</div>