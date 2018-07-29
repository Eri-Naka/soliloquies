<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/input.css">
<link rel="stylesheet" href="./css/profileEdit.css">
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(function(){
  $('#myfile').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("Please choose the file");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#img1").attr("src", e.target.result);
        $("#img1").attr("title", file.name);
        $("#img1").css("display", "inline-block");
      };
    })(file);
    reader.readAsDataURL(file);

  });
});
</script>
<title>soliloquies</title>
</head>
<body>
	<div class="profileEdit contens">

		<jsp:include page="header.jsp" />
		<p>Edit Profile</p>

		<div class="profileEdit_box">
			<s:form action="ProfileEditAction" method="post" enctype="multipart/form-data">
				<ul>
				<!-- ユーザー名 -->
				<li class="edit_name">User Name</li>
				<li><s:textfield class="textbox" name="name" value="%{#session.user.name}" /></li>

					<!-- プロフィール画像 -->
					<li  class="edit_img_text">User Picture</li>
					<!--  ファイル選択ボタン -->
					<li>
						<img id="img1" /><br>
						<div class="edit_file">
							<s:file class="edit_img" id="myfile" name="photo" />Select File
						</div>
					</li>


					<li><s:textarea class="edit_box" name="introductions"
						value="%{#session.user.introductions}" /></li>

					<li><s:submit class="submit_btn" value="Update" /></li>
				</ul>
			</s:form>
		</div>
	</div>

</body>
</html>