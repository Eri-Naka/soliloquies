package com.internousdev.soliloquies.action;

import com.internousdev.soliloquies.dao.UserDAO;
import com.internousdev.soliloquies.dto.UserDTO;

public class LogoutAction extends BaseAction {

	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		UserDAO dao = new UserDAO();
		dao.logout(user.getLoginId());

		session.clear();

		return "success";
	}
}
