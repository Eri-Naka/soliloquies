package com.internousdev.soliloquies.action;

import com.internousdev.soliloquies.dto.UserDTO;

public class HomeAction extends BaseAction {


	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		session.put("profile", user);

		TweetUtil.select(user.getId(), session);

		return "success";
	}
}
