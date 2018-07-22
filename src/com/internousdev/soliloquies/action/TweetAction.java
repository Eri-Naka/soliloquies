package com.internousdev.soliloquies.action;

import com.internousdev.soliloquies.dao.TweetDAO;
import com.internousdev.soliloquies.dto.UserDTO;
import com.internousdev.soliloquies.util.TweetUtil;

public class TweetAction extends BaseAction {

	private String message;

	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		TweetDAO dao = new TweetDAO();

		if (dao.insert(user.getId(), message)){

			TweetUtil.select(user.getId(), session);

			return "success";
		}else{
			return "error";
		}
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
