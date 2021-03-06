<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>로그인</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- CSS Files -->
<link href="./resources/users/css/bootstrap.min.css" rel="stylesheet" />
<link href="./resources/users/css/now-ui-kit.css?v=1.3.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="./resources/users/demo/demo.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/84d54512c7.js"
	crossorigin="anonymous"></script>
</head>
<style>
.loginBtn {
	border-radius: 30px;
}
</style>

<body class="login-page sidebar-collapse">
	<!-- Navbar -->
	<nav
		class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent "
		color-on-scroll="400">
		<div class="container">
			<div class="dropdown button-dropdown">
				<a href="#pablo" class="dropdown-toggle" id="navbarDropdown"
					data-toggle="dropdown"> <span class="button-bar"></span> <span
					class="button-bar"></span> <span class="button-bar"></span>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-header">Dropdown header</a> <a
						class="dropdown-item" href="#">Action</a> <a class="dropdown-item"
						href="#">Another action</a> <a class="dropdown-item" href="#">Something
						else here</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Separated link</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">One more separated link</a>
				</div>
			</div>
			<div class="navbar-translate">
				<a class="navbar-brand"
					href="https://demos.creative-tim.com/now-ui-kit/index.html"
					rel="tooltip" title="Designed by Invision. Coded by Creative Tim"
					data-placement="bottom" target="_blank"> Now Ui Kit </a>
				<button class="navbar-toggler navbar-toggler" type="button"
					data-toggle="collapse" data-target="#navigation"
					aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-bar top-bar"></span> <span
						class="navbar-toggler-bar middle-bar"></span> <span
						class="navbar-toggler-bar bottom-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse justify-content-end"
				id="navigation"
				data-nav-image="resources/users/img/blurred-image-1.jpg">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="home.do">홈으로</a></li>
					<li class="nav-item"><a class="nav-link"
						href="https://github.com/creativetimofficial/now-ui-kit/issues">Have
							an issue?</a></li>
					<li class="nav-item"><a class="nav-link" rel="tooltip"
						title="Follow us on Twitter" data-placement="bottom"
						href="https://twitter.com/CreativeTim" target="_blank"> <i
							class="fab fa-twitter"></i>
							<p class="d-lg-none d-xl-none">Twitter</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" rel="tooltip"
						title="Like us on Facebook" data-placement="bottom"
						href="https://www.facebook.com/CreativeTim" target="_blank"> <i
							class="fab fa-facebook-square"></i>
							<p class="d-lg-none d-xl-none">Facebook</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" rel="tooltip"
						title="Follow us on Instagram" data-placement="bottom"
						href="https://www.instagram.com/CreativeTimOfficial"
						target="_blank"> <i class="fab fa-instagram"></i>
							<p class="d-lg-none d-xl-none">Instagram</p>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->
	<div class="page-header ">
		<div class="page-header-image"
			style="background-image: url(resources/users/img/bts.jpg)"></div>
		<div class="content">
			<div class="container">
				<div class="col-md-4 ml-auto mr-auto">
					<div class="card card-login card-plain">
						<form class="form" action="companyLogin.do" method="POST">
							<div class="card-header text-center">
								<div class="logo-container">
									<img src="resources/users/img/now-logo.png" alt="">
								</div>
							</div>
							<div class="card-body">
								<div class="input-group no-border input-lg">
									<div class="input-group-prepend">
										<span class="input-group-text"> <i
											class="now-ui-icons users_circle-08"></i>
										</span>
									</div>
									<input type="text" class="form-control" name="CId"
										placeholder="Id...">
								</div>
								<div class="input-group no-border input-lg">
									<div class="input-group-prepend">
										<span class="input-group-text"> <i
											class="now-ui-icons objects_key-25"></i>
										</span>
									</div>
									<input type="text" placeholder="Password..." name="pwd"
										class="form-control" />
								</div>
								<div class="card-footer text-center">
									<input type="submit"
										class="btn btn-primary btn-round btn-lg btn-block"
										value="LOGIN">
									<!-- <a href="userSelect.do" class="btn btn-primary btn-round btn-lg btn-block">Login</a> -->
								</div>
								<div class="pull-left">
									<h6>
										<a href="#pablo" class="link">Create Account</a>
									</h6>
								</div>
								<div class="pull-right">
									<h6>
										<a href="#pablo" class="link">Need Help?</a>
									</h6>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


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