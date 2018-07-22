package com.internousdev.soliloquies.action;

import com.internousdev.soliloquies.dao.TweetDAO;
import com.internousdev.soliloquies.dto.UserDTO;
import com.internousdev.soliloquies.util.TweetUtil;

public class LikeAction extends BaseAction {

	private int tweetId;

	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		TweetDAO dao = new TweetDAO();

		if (dao.like(tweetId)){
			TweetUtil.select(user.getId(), session);
		}
		System.out.println(tweetId);

		return "success";
	}

	public void setTweetId(int tweetId) {
		this.tweetId = tweetId;
	}
}
