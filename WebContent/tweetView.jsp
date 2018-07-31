<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>

<div class="tweetView_contents">

		<ul class="contents_box">
			<s:iterator value="%{#session.tweets}">
				<li class="content_field">
					<ul>
						<li class="user_name">
							<s:property value="name" />
						</li>
						<!-- ツイート内容 -->
						<li class="contents_box2">
							<s:property value="escapeContent" escape="false" />
						</li>
						<!-- ボタン -->
						<li class="like_btn">
							<a href='<s:url action="LikeAction"><s:param name="tweetId" value="%{id}"/></s:url>'>
								<img src="images/like_black.png"></a>
							<s:property value="likeCount" />
						</li>
					</ul>
				</li>
			</s:iterator>

		</ul>
	</div>
</div>