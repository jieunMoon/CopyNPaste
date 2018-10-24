<%-- main>>
@JSP : myinfo.jsp
@Date : 2018.10.10
@Author : 이주원
@Desc : 내 정보 보기 페이지.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="row">
		<div class="center-block">
			<h2 class="text-center signup-title">내 정보 보기</h2>
			<hr>
			<form class="form-horizontal" method="post" name="signup" id="signup" enctype="multipart/form-data">
				<div class="form-group">
               <label class="control-label col-sm-5">프로필 이미지<span
                  class="text-danger"></span></label>
              <div class="col-sm-4">				
						<div>
							<div class="col-sm-3 pr-0 pl-0" >
								<div class="imgfile" style="width:92.5px;height:92.5px;"><img style="height: 100%;width: 100%" class="img-responsive user-photo img-rounded" 
              						id="beforUserPhoto" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png" ></div>				
           					</div>
           				<input type="file" class="userPhoto" name="userPhoto" id="userPhoto" 
								aria-describedby="file_upload" accept="image/*">
								<small> * .jpg, .gif, .png 파일만 업로드 가능하며, 500kb를 초과할 수 없습니다.</small>
						</div>
					</div>
            </div>
				
				
				<div class="form-group">
					<label class="control-label col-sm-5">Email ID <span class="text-danger"></span></label>
					<div class="col-lg-3 col-sm-4">
						<span><!-- class="input-group" -->
							<input type="email" class="form-control" name="userEmail"
								id="userEmail" readonly>
						   </span>
					</div>
				</div>
					<div class="form-group">
					<label class="control-label col-sm-5">닉네임 <span
						class="text-danger"></span></label>
						<div class="col-lg-3 col-sm-4">
						<div >
							<input type="text" class="form-control" name="userNick"
								id="userNick">
						</div>
					</div>
					 <button type="button" class="btn">&ensp;중복확인&ensp;</button>
				</div>
				
				
				<div class="form-group">
					<label class="control-label col-sm-5">비밀번호<span
						class="text-danger"></span></label>
					<div class="col-lg-3 col-sm-4">
						<div >
							<input type="password" class="form-control" name="userPwd"
								id="userPwd">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-5">비밀번호 확인<span
						class="text-danger"></span></label>
					<div class="col-lg-3 col-sm-4">
						<div >
							<input type="password" class="form-control" name="cuserPwd"
								id="cuserPwd">
						</div>
					</div>
				</div>
			
				<div class="social-btn text-center">
				&nbsp;<a href="#" class="btn btn-primary ">정보수정 </a>&nbsp;<a href="#" class="btn btn-danger ">회원탈퇴 </a>
		  		</div>
			<br>
			</form>
		</div>
	</div>
	<br>	<br>	<br>
</div>

<script type="text/javascript">

$.ajax({
	type : 'post',
	url : '${pageContext.request.contextPath}/member/myinfo.do',
	success : function(data) {
		var userPhoto = data.userPhoto; 
		$('#userEmail').val(data.userEmail);
		$('#userNick').val(data.userNick);
		/* $('#beforUserPhoto').attr("src", attr("src", "${pageContext.request.contextPath}/resources/image/userPhoto/" + userPhoto); */
		},
	error : function(error) {
		console.log(error);
		console.log(error.status);
		}
	})
	


</script>