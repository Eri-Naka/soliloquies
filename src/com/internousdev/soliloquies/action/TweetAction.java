package com.internousdev.soliloquies.action;

import com.internousdev.soliloquies.dao.TweetDAO;
import com.internousdev.soliloquies.dto.UserDTO;
import com.internousdev.soliloquies.util.InputChecker;
import com.internousdev.soliloquies.util.RegexDesc;
import com.internousdev.soliloquies.util.TweetUtil;

public class TweetAction extends BaseAction {

	private String message;

	public String execute() throws Exception{

		UserDTO user = (UserDTO)session.get("user");

		TweetDAO dao = new TweetDAO();

		if (!InputChecker.length(message, 1, 200)){
			putError("tweet", "1文字から200文字で入力してください。");
		}

		if (!InputChecker.regex(message, RegexDesc.format(RegexDesc.CUSTOM1))){
			putError("tweet", "使用不可文字が含まれています");
		}

		if (isError()){
			return "error";
		}else{
			if (dao.insert(user.getId(), message)){

				TweetUtil.select(user.getId(), session);

				return "success";
			}else{
				throw new Exception();
			}
		}
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
