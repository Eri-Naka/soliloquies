package com.internousdev.soliloquies.action;

import com.internousdev.soliloquies.dto.UserDTO;

public class IndexAction extends BaseAction {


	public String execute(){

		if (session.containsKey("user")){
			UserDTO user = (UserDTO)session.get("user");
			if (user.getLogined() == 1){
				return "success";
			}
		}

		return "login";
	}
}
