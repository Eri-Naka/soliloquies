<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="tweetFile_contents">
<s:if test="%{#session.user.id == #session.profile.id}">
	<s:form action="TweetAction">
		<div class="tweetField">
			<s:textarea name="message" class="tweet_message" placeholder="just talking to myself" wrap="soft"/>
			<s:submit class="tweet_btn" value="Send" />
			</div>
	</s:form>
	<!-- エラー表示 -->
		<s:if test="%{#session.error.containsKey('tweet')}">
		<div class="error-message">
			<s:iterator value="%{#session.error.tweet}">
				<s:property /><br>
			</s:iterator>
			</div>
		</s:if>
</s:if>
</div>
