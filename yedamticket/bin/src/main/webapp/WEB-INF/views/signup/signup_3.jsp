<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="apple-touch-icon" sizes="76x76" href="./resources/users/img/apple-icon.png">
<link rel="icon" type="image/png" href="./resources/users/img/favicon.png">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link href="./resources/users/css/bootstrap.min.css" rel="stylesheet" />
<link href="./resources/users/css/now-ui-kit.css?v=1.3.0" rel="stylesheet" />
<link href="./resources/users/demo/demo.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js"></script>

</head>
<body>
	<div class="section section-signup" style="background-image : url('./resources/users/img/bg8.jpg'); background-size: cover; background-position: top center; min-height: 700px;">
		<div class="container">
			<div class="row">
				<div class="card card-signup" data-background-color="black">
					<form class="form" method="POST" action="signup_4.do" onsubmit='return check_recaptcha();'>
						<div class="card-header text-center">
							<h3 class="card-title title-up">회원가입</h3>
							<div class="social-line">
								<img src="./resources/yedamticket.png">
							</div>
						</div>
						<div class="card-body">
							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
									 <i class="now-ui-icons users_circle-08"></i>
									</span>
								</div>
								<input type="text" class="form-control" placeholder="이름" required="required" id="name" name="name" maxlength="8">
							</div>

							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="now-ui-icons users_circle-08"></i>
									</span>
								</div>
								<input type="text" placeholder="아이디" class="form-control" required="required" id="UId" name="UId" maxlength="10" onkeyup="idbtnC();"/>
								<button type="button" class="idChk" id="idChk" value="N" onclick="fn_idChk(); ">중복체크</button>
							</div>

							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="now-ui-icons ui-1_lock-circle-open"></i>
									</span>
								</div>
								<input type="password" class="form-control" placeholder="비밀번호" required="required" id="pwd" name="pwd" maxlength="10">
								
							</div>

							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="now-ui-icons ui-1_lock-circle-open"></i>
									</span>
								</div>
								
								<input type="password" class="form-control" placeholder="비밀번호 확인" required="required" id="pwd2" name="pwd2" onkeyup="passConfirm()" maxlength="10">
							</div>
 
 
							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="now-ui-icons ui-1_email-85"></i>
									</span>
								</div>
								<input type="text" class="form-control" placeholder="이메일" value="${all }" readonly="readonly" id="email" name="email">
							</div>

							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="now-ui-icons location_pin"></i>
									</span>
								</div>
								<input type="text" class="form-control" placeholder="주소" required="required" id="addr" name="addr" maxlength="20">
							</div>

							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="now-ui-icons tech_mobile"></i>
									</span>
								</div>
								<input type="text" class="form-control" placeholder="연락처" required="required" id="phone" name="phone" maxlength="11" onkeyup="phoneConfirm()">
							</div>

							<div class="input-group no-border">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="now-ui-icons business_badge"></i>
									</span>
								</div>
								<input type="date" class="form-control" placeholder="생년월일 ex)20000101" required="required" id="birthDt" name="birthDt" maxlength="8" onkeyup="birthConfirm()" max="2022-03-30">
							</div>

							<!-- CAPTCHA -->
							<div class="g-recaptcha"
								data-sitekey="6LfYlAwfAAAAACBsy1BXNVfkU1LhB6cYOzfPBAGN"></div>

						</div>

						<div class="card-footer text-center">
							<input type="submit" id="submit_input" class="btn btn-neutral btn-round btn-lg">
						</div>
					</form>
				</div>
			</div>
			<div class="col text-center">
				<a href="userLoginForm.do"
					class="btn btn-outline-default btn-round btn-white btn-lg"
					target="_blank">로그인 페이지로</a>
			</div>
		</div>
	</div>
	<script>
	// 리캡챠 및 submit버튼 확인
	function check_recaptcha() {
		if ($("#idChk").val() == 'N') {
			alert('아이디 중복체크 하세요.');
			return false;
		}

		if (passCnum == 1) {
			alert("비밀번호를 확인해주세요.")
			return false
		}

		var v = grecaptcha.getResponse()
		if (v.length == 0) {
			alert("자동가입방지를 체크해주세요.")
			return false;
		} else {
			return true;
		}
	}

	// 시작 시 비활성화로 시작
	$('#idChk').attr("disabled", true)
	
	// id가 비어있을 때 중복확인 버튼 비활성화
	function idbtnC(){
		if($('#UId').val().length < 1){
			$('#idChk').attr("disabled", true)
		}else{
			$('#idChk').attr("disabled", false)
		}
	}
	
	// id 중복확인
	function fn_idChk() {
		var chk = 0;
		$.ajax({
			url: "idChk",
			type: "post",
			dataType: "json",
			data: {
				"UId": $("#UId").val()
			},
			success: function(data) {
				if (data == 1) {
					$("#idChk").val('N');
					alert("중복된 아이디 입니다..");
					idCnum = 1;
				} else if (data == 0) {
					$("#idChk").val('Y');
					alert("사용가능한 아이디 입니다.");
					idCnum = 0;
				} else {
					alert("아이디를 입력해주세요.");
				}
			}
		})
	}

	// 휴대폰 번호 유효성 검사
	function phoneConfirm() {
		var phone = document.getElementById('phone').value;
		var regTel = /^(01[016789]{1}|070|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
		if (!regTel.test(phone)) {
			console.log('올바른 전화번호를 입력하세요.');
			$('#phone').css("color", "#FE0A03");
			$('#phone').css("font-weight", "bold")
			phoneCnum = 1;
		} else {
			console.log('정상적인 전화번호입니다..!');
			$('#phone').css("color", "greenyellow")
			phoneCnum = 0;
		}
	}

	// 생년월일 번호 유효성 검사
	function birthConfirm() {
		var birth = document.getElementById('birthDt').value;
		var regBirth = /^(19[0-9][0-9]|20[0-2][0-2])(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/

		if (!regBirth.test(birth)) {
			console.log('올바른 생년월일을 입력하세요.');
			$('#birthDt').css("color", "#FE0A03");
			$('#birthDt').css("font-weight", "bold")
			birthCnum = 1;
		}
		else {
			if (birth < 20220329) {
				console.log('정상적인 생년월일입니다..!');
				$('#birthDt').css("color", "greenyellow")
				birthCnum = 0;
			}
		}
	}

	// 비밀번호 확인		
	function passConfirm() {
		var password = document.getElementById('pwd'); //비밀번호
		var passwordConfirm = document.getElementById('pwd2'); //비밀번호 확인 값
		var passwordConfirmClassName = $('#pwd2').attr('name');
		if (password.value == passwordConfirm.value) {//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			$('#pwd2').css("color", "greenyellow")
			passCnum = 0;
		} else {
			$('#pwd2').css("color", "#FE0A03")
			$('#pwd2').css("font-weight", "bold")
			passCnum = 1;
		}
	}
	</script>
</body>
</html>
