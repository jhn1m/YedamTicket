<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/user/userIdSearchModal.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="./resources/users/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="./resources/users/img/favicon.png">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link href="./resources/users/css/bootstrap.min.css" rel="stylesheet" />
<link href="./resources/users/css/now-ui-kit.css?v=1.3.0"
	rel="stylesheet" />
<link href="./resources/users/demo/demo.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
.loginBtn {
	border-radius: 30px;
}

.modal {
	z-index: 1;
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	top: 0;
	left: 0;
	display: none;
}

.modal_content {
	width: 548px;
	height: 537px;
	background: #020409;
	border-radius: 35px;
	position: relative;
	top: 25%;
	left: 43%;
	margin-top: -54px;
	margin-left: -115px;
	text-align: center;
	box-sizing: border-box;
	padding: 74px 0;
	line-height: 23px;
	cursor: pointer;
}

.authCheck {
	background: transparent;
	border-bottom: 1px solild grey;
}

.modal_contents{
	margin-left: auto;
    margin-right: auto;
    margin-top: 10%;
}
	.swal-modal {
		width: 30%;
	}
	
	.swal-button--confirm {
		background-color: #ffb236;
	}
</style>
</head>

<body class="login-page sidebar-collapse">
	<!-- Navbar (???????????? ??????????????? ??????) -->
	<nav
		class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent "
		color-on-scroll="400">
		<div class="collapse navbar-collapse justify-content-end"
			id="navigation"
			data-nav-image="resources/users/img/blurred-image-1.jpg">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="home.do">?????????</a></li>
				<li class="nav-item"><a class="nav-link" href="faqList.do">???????????????
						????????????????</a></li>
			</ul>
		</div>
		</div>
	</nav>
	<!-- End Navbar -->

	<div class="page-header"
		style="background-image: url('./resources/users/img/ssp7.jpg'); background-position: top center;">
		<div class="content">
			<div class="container">
				<div class="col-md-4 ml-auto mr-auto">
					<div class="card card-signup card-login card-plain"
						style="background: #301e4e;">
						<div class="card-header text-center">
							<h3 class="card-title title-up">?????????</h3>
							<div class="social-line" style="margin-bottom: 23px;">
								<img src="resources/users/img/YDTICKET_white.png" alt="">
							</div>
							<div>
								<input type="button" class="btn-block btnLogin authCheck"
									style="border: 0px; width: 50%; margin-right: 0px; float: left; color: white; border-bottom: 3px solid #cfc5e9;"
									value="??????"> <input type="button"
									class="btn-block btnLogin authCheck"
									style="border: 0px; width: 50%; margin-right: 0px; color: white;"
									value="??????">
							</div>
						</div>
						<div id="personalLogin">
							<form class="form" action="userLogin.do" method="POST">
								<div class="card-body">
									<div class="input-group no-border input-lg">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="now-ui-icons users_circle-08"></i>
											</span>
										</div>
										<input type="text" class="form-control UId" name="UId"
											placeholder="Id...">
									</div>
									<div class="input-group no-border input-lg">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="now-ui-icons objects_key-25"></i>
											</span>
										</div>
										<input type="password" placeholder="Password..." name="pwd"
											class="form-control pwd" />
									</div>
									<div class="card-footer text-center">
										<input type="submit" class="btn-round btn btn-block btnLogin"
											style="background: #cfc5e9; border: 0px;" value="?????????"><br>
										<a
											href="https://kauth.kakao.com/oauth/authorize?client_id=876f8c44421d27c420bd6ffaab02bb68&redirect_uri=http://3.39.54.67:8080/yedamticket/kakaoLogin.do&response_type=code">

											<img src="resources/users/img/kakao_login_large_wide.png"
											class="loginBtn">
										</a>
									</div>
									<br>
									<div class="pull-left">
										<h6>
											<a href="signup_1.do" class="link">????????????</a><br>
										</h6>
									</div>
									<div class="pull-right">
										<h6>
											<a href="managerLoginForm.do" class="link">???????????????????</a>
										</h6>
									</div>
									<div class="">
										<h6>
											<a href="#" class="idPassword link">?????????/???????????? ??????</a>
										</h6>
									</div>
								</div>
							</form>
						</div>
						<div id="companyLogin">
							<form class="form" action="companyLogin.do" method="POST">
								<div class="card-body">
									<div class="input-group no-border input-lg">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="now-ui-icons users_circle-08"></i>
											</span>
										</div>
										<input type="text" class="form-control UId" name="CId"
											placeholder="Id...">
									</div>
									<div class="input-group no-border input-lg">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="now-ui-icons objects_key-25"></i>
											</span>
										</div>
										<input type="password" placeholder="Password..." name="pwd"
											class="form-control pwd" />
									</div>
									<div class="card-footer text-center">
										<input type="submit" class="btn-round btn btn-block btnLogin"
											style="background: #cfc5e9; border: 0px;" value="?????????"><br>
									</div>
									<br>
									<div class="pull-left">
										<h6>
											<a href="signup_1.do" class="link">????????????</a>
										</h6>
									</div>
									<div class="pull-right">
										<h6>
											<a href="managerLoginForm.do" class="link">???????????????????</a>
										</h6>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal">
		<div class="modal_content" title="???????????? ?????? ????????????.">
			<div class="full">
				<div class="container">

					<div class="area_inputs wow fadeIn">

						<div class="sub_title font-weight-bold text-white">
							<h3>?????????/???????????? ??????</h3>
						</div>

						<div style="margin-bottom: 10px;"
							class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="search_1"
								name="search_total" onclick="search_check(1)" checked="checked">
							<label class="custom-control-label font-weight-bold text-white"
								for="search_1">????????? ??????</label>
						</div>

						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="search_2"
								name="search_total" onclick="search_check(2)"> <label
								class="custom-control-label font-weight-bold text-white"
								for="search_2">???????????? ??????</label>
						</div>

						<div id="searchI">
							<div class="form-group">
								<label class="font-weight-bold text-white " for="name">??????</label>
								<div>
									<input type="text" class="form-control" id="name" name="name"
										placeholder="ex)?????????">
								</div>
							</div>

							<div class="form-group">
								<label class="font-weight-bold text-white " for="phone">???????????????</label>
								<div>
									<input type="text" class="form-control" id="phone" name="phone"
										placeholder="ex) 01012345678">
								</div>
							</div>

							<div class="form-group">
								<button id="searchBtn" type="button" onclick="idSearch_click()"
									class="btn btn-primary btn-block">??????</button>
								<a class="btn btn-danger btn-block" id="close">??????</a>
							</div>

						</div>

						<div id="searchP" style="display: none;">
							<div class="form-group">
								<form action="">
									<label class="font-weight-bold text-white " for="UId">?????????</label>
									<div>
										<input type="text" class="form-control" id="UId" name="UId"
											placeholder="ex) Id">
									</div>

								</form>

							</div>
							<div class="form-group">
								<label class="font-weight-bold text-white " for="email">?????????</label>
								<div>
									<input type="email" class="form-control" id="email"
										name="email" placeholder="ex) E-mail@gmail.com">
								</div>

							</div>

							<div class="form-group">
								<button id="searchBtn2" type="button"
									class="btn btn-primary btn-block">??????</button>
								<a class="btn btn-danger btn-block" id="close2">??????</a>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("#companyLogin").hide();	
	
		$(".authCheck").on("click", function() {
			$(event.target).siblings().css({
				"border-bottom-width" : "0px"
			});
			$(event.target).css({
				"border-bottom-width" : "3px",
				"border-bottom-style" : "solid",
				"border-bottom-color" : "#cfc5e9"
			});

			console.log($(this).val());
			if ($(this).val() == '??????') {
				$("#companyLogin").show();
				$("#personalLogin").hide();
			} else if($(this).val()=='??????') {
				$("#personalLogin").show();
				$("#companyLogin").hide();
			}
		});

		$(function() {

			$(".idPassword").click(function() {
				$(".modal").fadeIn();
			});

			$("#close").click(function() {
				$(".modal").fadeOut();
			});
			$("#close2").click(function() {
				$(".modal").fadeOut();
			});

		});

		function search_check(num) {
			if (num == '1') {
				document.getElementById("searchP").style.display = "none";
				document.getElementById("searchI").style.display = "";
			} else {
				document.getElementById("searchI").style.display = "none";
				document.getElementById("searchP").style.display = "";
			}
		}

		// ????????? & ????????? ??? ???????????? ?????? ??????
		var idV = "";
		// ????????? ??? ?????? ???????????? ajax
		var idSearch_click = function() {
			$.ajax({
				type : "POST",
				url : "userSearch.do?name=" + $('#name').val() + "&phone="
						+ $('#phone').val(),
				success : function(data) {
					if (data == 0) {
						$('#id_value2').text("?????? ????????? ?????? ??????????????????");
					} else {
						$('#id_value2').text(
								"???????????? ????????????" + '\u00A0' + data + '\u00A0'
										+ "?????????");
						// ???????????? ????????? ??????
						idV = data;
					}
				}
			});
		}

		$(document).ready(function() {
			/////////???///???///???///???///////////
			// 1. ????????? ?????? ????????????
			$('#searchBtn').click(function() {
				$('#background_modal').show();
			});
			// 2. ????????? ?????? ??????
			$('.close').on('click', function() {
				$('#background_modal').hide();
			});
			// 3. ????????? ????????? ?????? ??? ??????
			$(window).on('click', function() {
				if (event.target == $('#background_modal').get(0)) {
					$('#background_modal').hide();
				}
			});
		});

		// ???????????? ?????? ????????? ???
		// 1 ???????????? ?????? ????????? ????????? ??? 2 ???????????? ?????? ???????????? ??????
		// 3 ????????? ??????
		$('#pwSearch_btn').click(function() {
			console.log(idV);

			// 1. ???????????? ?????? ????????? ????????????
			$('#search_2').prop("checked", true);

			// ????????? ??????
			search_check(2);

			// 2.?????????  ??????
			$('#UId').attr("value", idV);
			/* $('#store_id2').val(storeV).prop("selected", true); */

			// ??????????????? ????????? ??????
			$('#background_modal').hide();
		});

		$(function() {
			$("#searchBtn2")
					.click(
							function() {
								$("#searchBtn2").attr('disabled', true)
								$
										.ajax({
											url : "findpw.do",
											type : "POST",
											contentType : "application/x-www-form-urlencoded; charset=UTF-8",
											data : {
												id : $("#UId").val(),
												email : $('#email').val()
											},
											success : function(result) {
												swal("???.???.???.???.", result);
												
												$(".swal-button--confirm").on("click", function(){
													location.href="userLoginForm.do";
												});

											}

										})
							});
		})
	</script>

	<!--   Core JS Files   -->
	<script src="./resources/users/js/core/jquery.min.js"
		type="text/javascript"></script>
	<script src="./resources/users/js/core/popper.min.js"
		type="text/javascript"></script>
	<script src="./resources/users/js/core/bootstrap.min.js"
		type="text/javascript"></script>
	<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
	<script src="./resources/users/js/plugins/bootstrap-switch.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="./resources/users/js/plugins/nouislider.min.js"
		type="text/javascript"></script>
	<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
	<script src="./resources/users/js/plugins/bootstrap-datepicker.js"
		type="text/javascript"></script>
	<!--  Google Maps Plugin    -->
	<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
	<script src="./resources/users/js/now-ui-kit.js?v=1.3.0"
		type="text/javascript"></script>
</body>


</html>
