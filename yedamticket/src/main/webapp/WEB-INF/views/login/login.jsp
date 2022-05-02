<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Now UI Kit by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="resources/users/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="resources/users/assets/css/now-ui-kit.css?v=1.3.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resources/users/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="login-page sidebar-collapse">
  <!-- Navbar -->

  <!-- End Navbar -->
  <div class="page-header clear-filter" filter-color="orange">
    <div class="page-header-image" style="background-image:url(resources/users/assets/img/login2.jpg)"></div>
    <div class="content">
      <div class="container">
        <div class="col-md-4 ml-auto mr-auto">
          <div class="card card-login card-plain">
            <form class="form" method="" action="">
              <div class="card-header text-center">
                <div class="logo-container">
                  <img src="resources/users/assets/img/now-logo.png" alt="">
                </div>
              </div>
              <div class="card-body">
                <div class="input-group no-border input-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="now-ui-icons users_circle-08"></i>
                    </span>
                  </div>
                  <input type="text" class="form-control" placeholder="First Name...">
                </div>
                <div class="input-group no-border input-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="now-ui-icons text_caps-small"></i>
                    </span>
                  </div>
                  <input type="text" placeholder="Last Name..." class="form-control" />
                </div>
              </div>
              <div class="card-footer text-center">
                <a href="#pablo" class="btn btn-primary btn-round btn-lg btn-block">Get Started</a>
                <div class="pull-left">
                  <h6>
                    <a href="signup_1.do" class="link">Create Account</a>
                  </h6>
                </div>
                <div class="pull-right">
                  <h6>
                    <a href="#pablo" class="link">Need Help?</a>
                  </h6>
                </div>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
   
  </div>
  <!--   Core JS Files   -->
  <script src="resources/users/assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="resources/users/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="resources/users/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="resources/users/assets/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="resources/users/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
  <script src="resources/users/assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
  <script src="resources/users/assets/js/now-ui-kit.js?v=1.3.0" type="text/javascript"></script>
</body>

</html>

<!-- <h1>회원가입</h1>
<form name="join" action="mailSending.do" method="post">
	<input type="text" name="id" required="required"> @ 
	<input type="text" name="email" disabled>

	Hidden의 value값을 이용하여 값 삽입
	<input type="hidden" name="content" id="content" required="required">
	<input type="hidden" name="subject" id="subject" required="required">
	<select name="email" onchange="email_change()">
		<option value="0">선택하세요</option>
		<option value="9">직접입력</option>
		<option value="naver.com">naver.com</option>
		<option value="nate.com">nate.com</option>
		<option value="gmail.com">gmail.com</option>
	</select>
	<div>
		<input type="button" onclick="location.href='home.do'" value="홈으로" />
		<input type="submit" value="이메일 발송" /> 
		<input type="reset" value="취소" />
	</div>

</form>
<div>
	<a href="businessmemberInsertForm">기업회원이십니까?</a>
</div>
</body>
<script type="text/javascript">
	function email_change() {
		if (document.join.email.options[document.join.email.selectedIndex].value == '0') {
			document.join.email2.disabled = true;
			document.join.email2.value = "";
		}
		if (document.join.email.options[document.join.email.selectedIndex].value == '9') {
			document.join.email2.disabled = false;
			document.join.email2.value = "";
			document.join.email2.focus();
		} else {
			document.join.email2.disabled = true;
			document.join.email2.value = document.join.email.options[document.join.mail.selectedIndex].value;
		}
	}
	var subject = 'YDTICKET 회원가입 이메일 입니다.';
	document.getElementById('subject').value = subject;

	var content = 'http://localhost/prj/signup_3.do';
	document.getElementById('content').value = content;
</script>
 -->