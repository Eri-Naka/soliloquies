package com.internousdev.soliloquies.action;

import java.io.File;

import com.internousdev.soliloquies.dao.UserDAO;
import com.internousdev.soliloquies.dto.UserDTO;
import com.internousdev.soliloquies.util.InputChecker;
import com.internousdev.soliloquies.util.RegexDesc;
import com.internousdev.soliloquies.util.UserUtil;

public class ProfileEditAction extends BaseAction {


	private File photo;
	private String photoContentType;
	private String photoFileName;

	private String name;
	private String introductions;


	public String execute() throws Exception {

		UserDTO user = (UserDTO)session.get("user");

		UserDAO dao = new UserDAO();

		if (!InputChecker.length(name, 1, 16)) {
			putError("name", "1文字から16文字で入力してください");
		}
		if (!InputChecker.regex(name, RegexDesc.format(RegexDesc.NAME))){
			putError("name", "使用不可文字が含まれています");
		}

		if (!InputChecker.length(introductions, 1, 400)) {
			putError("introductions", "1文字から400文字で入力してください");
		}
		if (!InputChecker.regex(introductions, RegexDesc.format(RegexDesc.CUSTOM1))){
			putError("introductions", "使用不可文字が含まれています");
		}

		if (photo != null && !photoContentType.equals("image/png")) {
			putError("photo", "pngファイルを選択してください");
		}

		if (!isError()) {

			if (photo != null) {
				UserUtil.uploadPhoto(user.getId(), photo);
			}

			if (dao.update(user.getId(), name, introductions)) {

				user = dao.select(user.getLoginId(), user.getPassword());
				session.put("user", user);
			} else {
				throw new Exception();
			}

			return "success";
		} else {
			return "error";
		}
	}


	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}

	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setIntroductions(String introductions) {
		this.introductions = introductions;
	}
}
