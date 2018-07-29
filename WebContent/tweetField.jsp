<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:if test="%{#session.user.id == #session.profile.id}">
	<s:form action="TweetAction">
		<div class="tweetField">
			<s:textfield class="tweet_message" placeholder="just talking to myself" />
			<s:submit class="tweet_btn" value="SEND" />
		</div>
	</s:form>
</s:if>
