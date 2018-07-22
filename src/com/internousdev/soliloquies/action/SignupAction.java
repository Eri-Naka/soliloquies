package com.internousdev.soliloquies.action;

import com.internousdev.soliloquies.dto.SignupDTO;

public class SignupAction extends BaseAction {

	public String execute(){

		clearError();

		SignupDTO dto = new SignupDTO();
		dto.setLoginId("");
		dto.setPassword("");
		dto.setName("");

		session.put("signupDto", dto);

		return "success";
	}
}
